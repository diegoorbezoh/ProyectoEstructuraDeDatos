def cola_atencion()
$sesion_activa = true
$cont_hora = 9 
$cont_req = 1
$cont_req_prioritario = 1
$cont_hora_prioritario = 9
$cont_total = 0
$aux_cola1 = Array.new()
$aux_cola2 = Array.new()

		puts "Bienvenido al sistema"
		puts "---------------------"
		while $sesion_activa == true && $cont_total < 5
			puts "Ingrese el número según su tipo de requerimiento"
			puts "------------------------------------------------"
			puts "[1] : Solicitud de Reconocimiento Físico"
			puts "[2] : Solicitud de Reconocimiento Físico Preferente"
			puts "[3] : Seguimiento de atenciones"
			requerimiento = gets.chomp()
			seleccione = requerimiento
			case seleccione
				when "1"
					if $cont_req >= 0 && $cont_req <= 2
					puts "-----------------------------------------------------------------------------"
		            puts "Su solicitud será atendida con Nº de ticket #{$cont_req} a las #{$cont_hora}:00 horas"
		            puts "Presentarse en la sala #{$cont_req}, será atendido por Cesar Cotrina"
		            puts "-----------------------------------------------------------------------------"
		            end
		            if $cont_req >= 3 && $cont_req <= 4
					puts "-----------------------------------------------------------------------------"
		            puts "Su solicitud será atendida con Nº de ticket #{$cont_req} a las #{$cont_hora}:00 horas"
		            puts "Presentarse en la sala #{$cont_req}, será atendido por Pedro Alvarado"
		            puts "-----------------------------------------------------------------------------"
		            end
		            if $cont_req > 4		            
					puts "-----------------------------------------------------------------------------"
		            puts "Su solicitud será atendida con Nº de ticket #{$cont_req} a las #{$cont_hora}:00 horas"
		            puts "Presentarse en la sala #{$cont_req}, será atendido por Berly Benavente"
		            puts "-----------------------------------------------------------------------------"
		            end
					puts "¿Desea realizar un requerimiento adicional? y / n"
					respuesta = gets.chomp()
					if respuesta == "y"
						$sesion_activa = true
					end
					if respuesta == "n"
						$sesion_activa = false
						puts "Usted salió del sistema"
					end
					$cont_hora = $cont_hora + 1
					$cont_total = $cont_total + 1
					$cont_req = $cont_req + 1
				when "2"
					if $cont_req_prioritario >= 1 && $cont_req_prioritario <= 2
					puts "-----------------------------------------------------------------------------"
		            puts "Su solicitud será atendida con prioridad Nº de ticket #{$cont_req_prioritario} a las #{$cont_hora_prioritario}:00 horas"
		            puts "Presentarse en la sala #{$cont_req_prioritario}, será atendido por Jorge Raymundo"
		            puts "-----------------------------------------------------------------------------"
		            end
		            if $cont_req_prioritario >= 3 && $cont_req_prioritario <= 4
					puts "-----------------------------------------------------------------------------"
		            puts "Su solicitud será atendida con prioridad con Nº de ticket #{$cont_req_prioritario} a las #{$cont_hora_prioritario}:00 horas"
		            puts "Presentarse en la sala #{$cont_req_prioritario}, será atendido por Luis Felipe"
		            puts "-----------------------------------------------------------------------------"
		            end
		            if $cont_req_prioritario > 4		            
					puts "-----------------------------------------------------------------------------"
		            puts "Su solicitud será atendida con prioridad con Nº de ticket #{$cont_req_prioritario} a las #{$cont_hora_prioritario}:00 horas"
		            puts "Presentarse en la sala #{$cont_req_prioritario}, será atendido por Ivan Ivañez"
		            puts "-----------------------------------------------------------------------------"
		            end
            		puts "¿Desea realizar un requerimiento adicional? y / n"
					respuesta = gets.chomp()
					if respuesta == "y"
						$sesion_activa = true
					end
					if respuesta == "n"
						$sesion_activa = false
						puts "Usted salió del sistema"
					end
					if $cont_req_prioritario == 3
						$cont_hora_prioritario = $cont_hora_prioritario + 1
					end
					$cont_total = $cont_total + 1 
					$cont_req_prioritario = $cont_req_prioritario + 1
					$aux3 = $cont_req_prioritario-1
					$aux_cola2.push($cont_req_prioritario-1)
				when "3"
				        reporte_atenciones()
				else
					puts "Solicitud incorrecta"	
					puts "¿Desea realizar un requerimiento adicional? y / n"
					respuesta = gets.chomp()
					if respuesta == "y"
						$sesion_activa = true
					end
					if respuesta == "n"
						$sesion_activa = false
						puts "Usted salió del sistema"
					end
				end	
            end 
	
            if $cont_total > 4
               puts "Se registraron el total máximo de solicitudes" 
            end	
        end

def reporte_atenciones()
$atencion_regular = Array.new()
$atencion_prioritaria = Array.new()

while $sesion_activa == true
    puts " "
    puts "--------------------------------------------------"
    puts "Bienvenido al módulo de seguimiento de atenciones"
    puts "--------------------------------------------------"
    puts "Ingrese el número según su tipo de requerimiento"
    puts "--------------------------------------------------"
    puts "[1] : Primer ticket por atender"
	puts "[2] : Último ticket por atender"
	puts "[3] : Total de tickets por atender"
	puts "[4] : Cola de atención"
    puts " "

    seleccion = gets.chomp()
    
    case seleccion
        when "1"
            puts "----------------------------------------"
            puts "El primer ticket por atender es el N° #{$cont_req/$cont_req}"
            puts "----------------------------------------"
            puts "¿Desea realizar un requerimiento adicional? y / n"
					respuesta = gets.chomp()
					if respuesta == "y"
						$sesion_activa = true
					end
					if respuesta == "n"
						$sesion_activa = false
						puts "Usted salió del sistema"
					end
		when "2"
            puts "----------------------------------------"
            puts "El último ticket por atender es el N° #{$cont_total}"
            puts "----------------------------------------"
            puts "¿Desea realizar un requerimiento adicional? y / n"
					respuesta = gets.chomp()
					if respuesta == "y"
						$sesion_activa = true
					end
					if respuesta == "n"
						$sesion_activa = false
						puts "Usted salió del sistema"
					end
		when "3"
            puts "----------------------------------------"
            puts "El total de tickets por atender son: #{$cont_total}"
            puts "----------------------------------------"
            puts "¿Desea realizar un requerimiento adicional? y / n"
					respuesta = gets.chomp()
					if respuesta == "y"
						$sesion_activa = true
					end
					if respuesta == "n"
						$sesion_activa = false
						puts "Usted salió del sistema"
					end

		when "4"
			$aux_cola1.push(($cont_req-1)+$cont_req_prioritario-1)
			$atencion_regular.push($aux_cola1)
			$atencion_prioritaria.push($aux_cola2)
			puts "-----------------------"
            puts "Cola de atención:"
			puts "-----------------------"
			puts "Debe atender prioritariamente los tickets Nº#{$atencion_prioritaria.shift}"
			puts "Luego continuar con los tickets en adelante hasta el Nº #{$atencion_regular.shift}"		
			puts " "
			puts "¿Desea realizar un requerimiento adicional? y / n"
					respuesta = gets.chomp()
					if respuesta == "y"
						$sesion_activa = true
					end
					if respuesta == "n"
						$sesion_activa = false
						puts "Usted salió del sistema"
					end

        else
					puts "Solicitud incorrecta"	
                    puts "¿Desea realizar un requerimiento adicional? y / n"
					respuesta = gets.chomp()
					if respuesta == "y"
						$sesion_activa = true
					end
					if respuesta == "n"
						$sesion_activa = false
						puts "Usted salió del sistema"
					end
    end
 end
end

def validarnombre()
error = 0
ingresa = false
preferente = false
begin
    puts "Ingrese usuario"
    usuario = gets.chomp()
    puts "Ingrese Contraseña"
    pass = gets.chomp()
    puts " "
    usuario_ingresado = Array.new()
	usuario_ingresado.push(usuario,pass)
	lista_usuarios = Array.new()

	usuario01 = ["Juan", "Perez"]
	usuario02 = ["Luis", "Felipe"]
	usuario03 = ["Juan", "Gutierrez"]
	usuario04 = ["Jorge", "Benites"]
	usuario05 = ["Juan", "Gonzales"]

	lista_usuarios.push(usuario01,usuario02,usuario03,usuario04,usuario05)
	i = 0
	while (i < lista_usuarios.size-1) && (usuario_ingresado != lista_usuarios[i])
		i = i + 1
	end	
    
    if lista_usuarios[i] == usuario_ingresado
		ingresa = true
	else
		error = error + 1
		puts "Datos incorrectos, intento número #{error}"
		puts "----------------"
	end
	
end while  ingresa == false && error < 3 # Mientras se cumpla está condición ...

	if ingresa == false
		puts "Usted no pudo ingresar al sistema"
	else
		cola_atencion() #Llama a la funsión cola_atención
	end
gets()
end

validarnombre()