SubProceso subtotal <- LeerPedido
    Definir subtotal, producto Como Real
	
    subtotal <- 0
	
    Escribir "Valor del producto (0 para cerrar la cuenta): "
    Leer producto
	
    Mientras producto <> 0 Hacer
        Si producto > 0 Entonces
            subtotal <- subtotal + producto
        SiNo
            Escribir "El valor del producto debe ser positivo."
        FinSi
		
        Escribir "Valor del producto (0 para cerrar la cuenta): "
        Leer producto
    FinMientras
FinSubProceso


SubProceso valorPorcentaje <- CalcularPorcentaje(subtotal, porcentaje)
    Definir valorPorcentaje Como Real
	
    valorPorcentaje <- subtotal * porcentaje / 100
FinSubProceso


SubProceso ImprimirFactura(subtotal, impuesto, propina)
    Definir total Como Real
	
    total <- subtotal + impuesto + propina
	
    Escribir ""
    Escribir "======= FACTURA DE VENTA ======="
    Escribir "Subtotal: $", subtotal
    Escribir "Impuesto (8%): $", impuesto
    Escribir "Propina sugerida (10%): $", propina
    Escribir "--------------------------------"
    Escribir "Total a pagar: $", total
    Escribir "================================"
FinSubProceso


Algoritmo FacturaRestaurante
    Definir subtotal, impuesto, propina Como Real
	
    subtotal <- LeerPedido()
    impuesto <- CalcularPorcentaje(subtotal, 8)
    propina <- CalcularPorcentaje(subtotal, 10)
    ImprimirFactura(subtotal, impuesto, propina)
FinAlgoritmo
