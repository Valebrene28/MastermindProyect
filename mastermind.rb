require_relative "board"
require 'colorize'
require 'colorized_string'


class Jugador1
    board = Board.new()
    colores = ["rojo".colorize(:red), "verde".colorize(:green), "azul".colorize(:blue), "amarillo".colorize(:yellow),]
    puts colores_random = colores.sample(4)
    
   
    p "********************************************************************"
    puts "     __  __            _                     _           _ 
    |  \\/  | __ _  ___| |_  ___  _ _  _ __  (_) _ _   __| |
    | |\\/| |/ _` |(_-<|  _|/ -_)| '_|| '  \\ | || ' \\ / _` |
    |_|  |_|\\__,_|/__/ \\__|\\___||_|  |_|_|_||_||_||_|\\__,_|"
    p "********************************************************************"
    p "¿Quieres adivinar? S/N"
    choise = gets.chomp.downcase
    
    numero_intentos = 12
    intentos_maximos = 0
    
   
    if choise.downcase == "s"
        while intentos_maximos < numero_intentos
            board.show_board
            print "Intento ##{intentos_maximos+=1}. Por favor elija su combinacion:  "
            combinacion = colores.map{|color|color.uncolorize}.sample(4)
            sleep 1
            combinacion.map!{ |color|
            case color
                when "rojo"
                color.colorize(:red)
                when "azul"
                color.colorize(:blue)
                when "amarillo"
                color.colorize(:yellow)
                when "verde"
                color.colorize(:green)
                else
                "o"
                end
            }
            
            if combinacion == colores_random
                 p "Felicitaciones, ganaste en el intento ##{intentos_maximos}"
                 break
             
            else
                new_array = ["", "", "", ""]
            
                new_array.each_with_index do | color, index |
                     colores=colores_random.map{|color|color}
                    
                    if combinacion[index] == colores[index]
                        
                        new_array[index]<<"🔴" 
                        
                    else
                        new_array[index]<<"⚪"
                        
                    end
                end
                board.set_board(numero_intentos, combinacion,new_array.sort {|a,b| b <=> a})
            end
           
            numero_intentos-=1
            
            
        end
    else 
     p "KAJSJDKF"
        
    end
   
   

   
    


end

jugador = Jugador1.new















