Algoritmo Semaforo
	Escribir "Digite la cantidad de unidades disponibles:"
    Leer unidades
	
    Si unidades < 0 Entonces
        Escribir "Error: cantidad invalida."
    Sino
        Si unidades = 0 Entonces
            Escribir "ROJO: inventario agotado."
        Sino
            Si unidades <= 10 Entonces
                Escribir "AMARILLO: hay que pedir inventario."
            Sino
                Escribir "VERDE: inventario suficiente. Todo bien."
            FinSi
        FinSi
    FinSi
	
FinAlgoritmo
