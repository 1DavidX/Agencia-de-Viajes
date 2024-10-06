Algoritmo Reservas
    Repetir
		
        destino_valido := FALSO
        Mientras destino_valido = FALSO Hacer
            Escribir "Destino (Playa, Monta�a, Ciudad):"
            Leer destino
            destino := Mayusculas(destino)
			
            Si destino = "PLAYA" O destino = "MONTA�A" O destino = "CIUDAD" Entonces
                destino_valido := VERDADERO
            Sino
                Escribir "Destino no v�lido. Por favor, ingrese Playa, Monta�a o Ciudad."
            FinSi
        FinMientras
		
        Escribir "D�as de estancia:"
        Leer dias_estancia
        
        Segun destino Hacer
            Caso "PLAYA": costo_base := 500000 * dias_estancia
            Caso "MONTA�A": costo_base := 400000 * dias_estancia
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
        
        Escribir "�Desea realizar otra reserva? (si/no):"
        Leer otra_reserva
		HastaQue otra_reserva = "no"
FinAlgoritmo

