class Board 
    def initialize 
        @board=  Array.new(12) {Array.new(["⚫","⚫","⚫","⚫",["|⚪","⚪","⚪","⚪"]])}
    end

    def set_board(index, arreglo, arreglo_respuestas)
        @board[index] = arreglo,"|", arreglo_respuestas
    end

    
    def show_board
        @board.each {|value|puts "|#{value.join(" ")}|"}
    end
   
end

