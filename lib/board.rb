class Board
    attr_accessor :cells
    def reset!
        @cells = Array.new(9, " ")
    end
    def initialize
        @cells = Array.new(9, " ")
    end
    def display
        puts " #{self.cells[0]} | #{self.cells[1]} | #{self.cells[2]} "
        puts "-----------"
        puts " #{self.cells[3]} | #{self.cells[4]} | #{self.cells[5]} "
        puts "-----------"
        puts " #{self.cells[6]} | #{self.cells[7]} | #{self.cells[8]} "
    end
    def position(input)
        int = input.to_i
        int -= 1
        self.cells[int]
    end
    def full?
        !self.cells.include?(" ")
    end
    def turn_count
        self.cells.find_all {|cell| cell != " "}.size
    end
    def taken?(position)
        pos_int = position.to_i 
        pos_int -= 1
        !self.cells[pos_int].include?(" ") 
    end
    def valid_move?(input)
        int = input.to_i
        !self.taken?(input) && int.between?(1, 9)
    end
end