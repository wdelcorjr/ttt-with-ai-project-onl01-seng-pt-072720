module Players
    class Human < Player
        def move(board)
            puts 'Please enter "X" or "O" to select token.'
            gets.strip
        end
    end
end