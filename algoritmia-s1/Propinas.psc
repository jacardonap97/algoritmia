Algoritmo Propinas
	Escribir "Digite el total de la cuenta"
	Leer cuenta
	Escribir "Digite el porcentaje"
	Leer porcentaje
	Escribir "Digite el número de personas"
	Leer personas
	propina <- cuenta * (porcentaje / 100)
	total <- cuenta + propina
	porPersona <- total / personas
	Escribir "Cada uno paga: $", porPersona
FinAlgoritmo
