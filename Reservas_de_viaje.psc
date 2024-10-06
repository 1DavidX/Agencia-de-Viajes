Algoritmo Reservas
    Repetir
		
        destino_valido := FALSO
        Mientras destino_valido = FALSO Hacer
            Escribir "Destino (Playa, Montaña, Ciudad):"
            Leer destino
            destino := Mayusculas(destino)
			
            Si destino = "PLAYA" O destino = "MONTAÑA" O destino = "CIUDAD" Entonces
                destino_valido := VERDADERO
            Sino
                Escribir "Destino no válido. Por favor, ingrese Playa, Montaña o Ciudad."
            FinSi
        FinMientras
		
        Escribir "Días de estancia:"
        Leer dias_estancia
        
        Segun destino Hacer
            Caso "PLAYA": costo_base := 500000 * dias_estancia
            Caso "MONTAÑA": costo_base := 400000 * dias_estancia
            Caso "CIUDAD": costo_base := 300000 * dias_estancia
        FinSegun
        
		descuento := 0 
		
		Si dias_estancia >= 7 Entonces
			descuento := 0.15 
		Sino
			Si dias_estancia >= 3 Entonces
				descuento := 0.10 
			FinSi
		FinSi
        
        costo_total := costo_base * (1 - descuento) 
        Escribir "Total: $", costo_total, " Descuento: ", descuento * 100, "%"
        
        Escribir "¿Desea realizar otra reserva? (si/no):"
        Leer otra_reserva
		HastaQue otra_reserva = "no"
FinAlgoritmo

