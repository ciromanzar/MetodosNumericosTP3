#Buscar los anios a procesar
paramsfile = open('./stats/params.txt', 'r')
params = paramsfile.readline()
params = params.split(" ")
inicio = int(params[0])
fin = int(params[1])
years = range(inicio,fin+1)


#Guardar las estadisticas de equipos por anio
f = open('./estadisticasEquipos/equipos2.txt', 'r')

output = open('./estadisticasEquipos/equipos.txt', 'w')


file = []

for line in f:
	line = line.rstrip(" \n")
	line = line.split(",")
	if line[0] != 'Rk':
		file.append(line)

i = 0
anio = inicio
while i < len(file):
	j = i
	yeari = []
	#print file[i]
	#print file[j][1]
	yeari.append(file[i])
	j += 1
	while j < len(file) and (file[i][0] < file[j][0]):
		#print file[j][1]
		yeari.append(file[j])
		j += 1

	#print yeari

	anio += 1
	
	# ordeno yeari por abreviatura
	for k in range(len(yeari)):
		numeroEquipo = '0'
		nombreEquipo = yeari[k][1]
		equiposfile = open('./stats/equipos/equipos_'+str(anio)+'.txt', 'r')
		for line in equiposfile:
			line2 = line.rstrip(" \n")
			line2 = line2.split(",")
			#print line2
			#print nombreEquipo

			if line2[1] == nombreEquipo:
				numeroEquipo = line2[0]
		yeari[k][1] = int(numeroEquipo)
		equiposfile.close()

	yeari.sort(key= lambda numero: numero[1])

	for team in yeari:	
		for l in range(len(team)-2):
			output.write(str(team[l+2]) + ' ')
		output.write('\n')

	i = j

output.close()
f.close()
paramsfile.close()