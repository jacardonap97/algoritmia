Algoritmo Bisiesto
	Escribir "Digite su edad en años:"
    Leer anios
	
    Escribir "Digite un año:"
    Leer anio
	
    dias <- anios * 365
	
    Si (anio MOD 4 = 0 Y anio MOD 100 <> 0) O anio MOD 400 = 0 Entonces
        Escribir anio, " es bisiesto"
    SiNo
        Escribir anio, " no es bisiesto"
    FinSi
	
    Escribir "Has vivido aproximadamente ", dias, " dias."
FinAlgoritmo
