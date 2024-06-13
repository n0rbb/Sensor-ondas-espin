import os, openpyxl

ficheros = []


dirname = os.getcwd()

for fichero in os.listdir(dirname):
    if os.path.isfile(os.path.join(dirname, fichero)) and fichero.endswith('.prn'):
        ficheros.append(fichero)

for fname in ficheros:
    workbook = openpyxl.Workbook()
    sheet = workbook.active
    freqs = []
    db = []
    data = []
    #Leer el .prn
    with open(fname, 'r') as file:
        for line in file:
            campos = line.strip().split(", ")
            if len(campos) == 2: 
                freqs.append(campos[0])
                db.append(campos[1])

    #Guardar en .xlsx
    for i in range(len(freqs)):
        data.append([int(freqs[i]), float(db[i][:-1])])
        #print(db[i])

    for row in data:
        sheet.append(row)
    workbook.save(filename = fname.replace(".prn", ".xlsx"))
