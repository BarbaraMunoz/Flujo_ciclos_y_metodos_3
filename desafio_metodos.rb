=begin
#Requerimiento 1, se solicita un programa que mediante el uso de métodos permita calcular 
el nuevo salario de un colaborador/a en función de un porcentaje mínimo de aumento establecido.
=end

puts "Bienvenido al sistema de cálculo de reajuste de sueldo"


print "Ingrese su salario actual: "
sueldo = gets.chomp.to_i
print "Ingresa el porcentaje de aumento: "
porcentaje = gets.chomp.to_i

def aumento_sueldo(sueldo, porcentaje)
    aumento = sueldo * (porcentaje/100.0)
    sueldo_actualizado = sueldo + aumento
end
nuevo_sueldo = aumento_sueldo(sueldo, porcentaje)
puts "Sueldo actualizado: $#{nuevo_sueldo.to_i}"


puts # Saltos de linea
puts


=begin
2. Requerimiento 2, te solicitan un programa que simule el juego de “Adivina el número”. 
En este programa el computador va a elegir un número aleatorio y el usuario al seleccionar un 
número debe indicarle si ganó o perdió. La condición para ganar es que el número del computador debe ser 
igual al del jugador.
El rango de número va entre 1 hasta n, tomando en consideración que mientras más amplio sea el rango más 
duradero será el juego.
=end

def adivina_numero
    numero_secreto = rand(1..8)

    puts "Bienvenido al juego de 'Adivina el número'!"
    puts "Elige un número entre 0 y 8:"

    loop do
        numero_usuario = gets.chomp.to_i
        if numero_usuario > 8
            puts "Recuerda que el rango es de 0 a 8. Intenta de nuevo."
            
        elsif numero_usuario == numero_secreto
            puts "¡Felicidades! ¡Adivinaste el número!"
        break if numero_usuario == numero_secreto
        elsif numero_usuario > numero_secreto
            puts "El número es menor. Intenta de nuevo."
        else
            puts "El número es mayor. Intenta de nuevo."
        end
    end
end
adivina_numero

puts # Salto de linea


=begin
3. Requerimiento 3, utilizando como base el ejercicio de cálculo de IMC en la guía de ejercicios, 
agregar en el cálculo de Obesidad los elementos faltantes dado que la obesidad se subdivide en 3 niveles. 
Deberás agregar a la lógica condicional los cálculos para esos tres niveles.
=end
# Calculando el IMC

puts "****Bienvenido/a al Sistema de cálculo de IMC***"

def calculoIMC
    puts "Ingresa tu peso en kilogramos"
    peso = gets.chomp.to_f
    puts "Ingresa tu altura expresada en metros (Ejemplo: 1.70)"
    altura = gets.chomp.to_f
    imc = peso/(altura*altura) #altura*altura pq se pide que sea "altura al cuadrado"
end

def masa_corporal (imc) 
    puts "Tu índice de masa corporal es: #{imc.round (2)} "
    if imc < 18.5
        puts "Está bajo de peso"
    elsif imc >=18.5 and imc < 25    # <=24.9 ESTE NO PUEDE PORQUE HAY MUCHOS N° ENTRE 24.9 y 25
        puts "Su peso es normal"
    elsif imc >=25 and imc <30       # <=29.9 ESTE NO PUEDE PORQUE HAY MUCHOS N° ENTRE 29.9 y 30
        puts "Está con sobrepeso"
    elsif imc >= 30 and imc < 35
        puts "Tienes obesidad grado I (Moderado)"
    elsif imc >= 35 and imc < 40
        puts "Tienes obesidad grado II (Severo)"
    else
        puts "Tienes obesidad grado III (Muy severo)"
    end
end

masa_corporal(calculoIMC) # ESTO ES MUCHO MEJOR PORQUE SE OPTIMIZA

=begin
IF interno
Obesidad grado I: 30 - 34.9 - Moderado
○ Obesidad grado II: 35 - 39.9 - Severo
○ Obesidad grado III: Más de 40 - Muy severo
=end