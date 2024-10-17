#include <SPI.h>

#define SHL(x,y) ((uint32_t)1<<y)*x 
#define REF_CLK 25000000 //El oscilador necesita una frecuencia de referencia. Voy a usar la del cristal de la Eval board, no uno externo (25MHz).
uint8_t slave_select_pin = 15; //Pin del LE. En el Teensy estoy utilizando el 15.
uint64_t frequency = 3890000000; //Frecuencia de salida por el ADF

// Registro 0: 16-bits de INT y 12-bits de fraccional. Multiplexor 000
uint16_t INT = 0; //unsigned int 16 bits  
uint16_t FRAC = 0; 

//Los bits de cada registro vienen en los mapas de la documentación de la ADF 
// Registro 1: 
uint8_t phase_adj; 
uint8_t prescaler = 0;
uint16_t phase = 1;
uint16_t MOD = 4095; //Usar el valor máximo permite maximizar la resolución de las frecuencias de salida

// Registro 2:
uint8_t low_noise_spur;
uint8_t muxout;
uint8_t ref_doubler;
uint8_t rdiv2 = 1;
uint16_t r_counter = 10;
uint8_t dbl_buf;
uint8_t charge_pump_current = 0b111;
uint8_t ldf=1; 
uint8_t ldp;
uint8_t pd_polarity = 1;
uint8_t powerdown;
uint8_t cp_three_state;
uint8_t counter_reset;

// Registro 3:
uint8_t band_mode_clksel;
uint8_t abp;
uint8_t chg_cancel;
uint8_t csr;
uint8_t clkdiv_mode;
uint16_t clock_divider = 150; 

// Registro 4:
uint8_t feedback_sel = 1;
uint8_t rf_div_sel = 2;   // 0 = /1, 1=/2, 2=/4 ...
uint8_t band_select_clkdiv = 4;
uint8_t vco_pwrdown = 0;
uint8_t mtld = 1;
uint8_t aux_outsel = 0;
uint8_t aux_outena;
uint8_t aux_pwr;
uint8_t rf_ena = 1; 
uint8_t out_pwr = 3; /*This is the maximum power level the LO can give. 
The more output power we get from the local oscillator, the less we need to amplify afterwards.*/

// Registro 5:
uint8_t ld_pinmode = 1;

uint32_t reg[6] = {0,0,0,0,0,0};

uint32_t pfd_freq = (REF_CLK*(1.0+ref_doubler))/(r_counter*((1.0+rdiv2)));

void prepare_registers() { //Función para describir qué va en cada registro. 
  
  if(frequency >= 2200000000) rf_div_sel = 0; 
  if(frequency < 2200000000) rf_div_sel = 1; 
  if(frequency < 1100000000) rf_div_sel = 2; 
  if(frequency < 550000000) rf_div_sel = 3;
  if(frequency < 275000000) rf_div_sel = 4;
  if(frequency < 137500000) rf_div_sel = 5;
  if(frequency < 68750000) rf_div_sel = 6; 
  
  INT = (frequency*(1<<rf_div_sel))/(pfd_freq);
  FRAC = (((frequency*(1<<rf_div_sel))%pfd_freq)*4095)/(pfd_freq); //Calcular

  //Serial.println(INT); 
  //Preparar los datos que van a ir a cada registro
  reg[0] = SHL(INT, 15) | SHL(FRAC, 3);  //METO 3 POSICIONES MÁS EN EL SHL PARA COMPENSAR LA DIVISIÓN POR 8
  reg[1] = SHL(phase_adj, 28)  | SHL(prescaler, 27)  | SHL(phase, 15)  | SHL(MOD, 3) | 0b001;
  reg[2] = SHL(low_noise_spur, 29) | SHL(muxout, 26) | SHL(ref_doubler, 25) | SHL(rdiv2, 24) | SHL(r_counter, 14) \
           | SHL(dbl_buf, 13) | SHL(charge_pump_current, 9) | SHL(ldf, 8) | SHL(ldp, 7) | SHL(pd_polarity, 6) \
           | SHL(powerdown, 5) | SHL(cp_three_state, 4) | SHL(counter_reset, 3) | 0b010;
  reg[3] = SHL(band_mode_clksel, 23) | SHL(abp, 22) | SHL(chg_cancel, 21) | SHL(csr, 18) | SHL(clkdiv_mode, 15) \
           | SHL(clock_divider, 3) | 0b011;
  reg[4] = SHL(feedback_sel, 23) | SHL(rf_div_sel, 20) | SHL(band_select_clkdiv, 12) | SHL(vco_pwrdown, 9) \
           | SHL(mtld, 10) | SHL(aux_outsel, 9) | SHL(aux_outena, 8) | SHL(aux_pwr, 6) | SHL(rf_ena, 5) | SHL(out_pwr, 3) | 0b100;
  reg[5] = SHL(ld_pinmode, 22) | SHL(0b11, 19) | 0b101;
}

void sendRegisterToAdf(uint16_t reg_id) {
  
  digitalWrite(slave_select_pin, LOW); //IMPORTANTE, en protocolo SPI el seleccionado está en low cuando se le van a actualizar los datos
  delayMicroseconds(10);
  SPI.transfer((uint8_t)(reg[reg_id] >> 24));
  SPI.transfer((uint8_t)(reg[reg_id] >> 16));
  SPI.transfer((uint8_t)(reg[reg_id] >> 8));
  SPI.transfer((uint8_t)(reg[reg_id]));
  
  digitalWrite(slave_select_pin, HIGH);
  delayMicroseconds(5);
  digitalWrite(slave_select_pin, LOW);

  delayMicroseconds(2500);

}

void updateAllRegisters() {
  for(int i=5; i>=0; i--) {
    sendRegisterToAdf(i); //Actualizar los registros uno a uno
  }
}

char key, cwmode=0;

void setup() {
  pinMode(slave_select_pin, OUTPUT);
  digitalWrite(slave_select_pin, LOW); //Esto creo que es redundante
  Serial.begin(9600);
  
  SPI.setDataMode(SPI_MODE0);
  SPI.setBitOrder(MSBFIRST);
  SPI.setClockDivider(SPI_CLOCK_DIV128);
  SPI.begin();
  prepare_registers();
  updateAllRegisters();
  SPI.end();

}


void loop() {
  //while (Serial.available() == 0) {}
  key=Serial.read(); //Modificar frecuencia en tiempo "casi" real.
  if(key=='x') frequency -= 10;
  if(key=='c') frequency += 10;
  if(key=='s') frequency -= 100;
  if(key=='d') frequency += 100;
  if(key=='w') frequency -= 1000;
  if(key=='e') frequency += 1000;
  if(key=='2') frequency -= 10000;
  if(key=='3') frequency += 10000;
  if(key=='1') frequency -= 100000;
  if(key=='4') frequency += 100000;
  if(key=='5') frequency -= 1000000;
  if(key=='6') frequency += 1000000;

  SPI.begin();
  prepare_registers();
  updateAllRegisters();
  SPI.end();

  float time = millis() / 1e3;
  Serial.print(time);
  Serial.print(", ");
  Serial.print(frequency);
  delay(500);
}
