def player_setter(num_humans)
    if num_humans == 1
        puts "Would you like the computer to go first or second?"
        decision = gets.strip
        if decision == "first"
            player_1 = Players::Computer.new("X")
            player_2 = Players::Human.new("O")
        elsif decision == "second" 
            player_1 = Players::Human.new("X")
            player_2 = Players::Computer.new("O")
        end
    elsif num_humans == 2
        player_1 = Players::Human.new("X")
        player_2 = Players::Human.new("O")
    else
        player_1 = Players::Computer.new("X")
        player_2 = Players::Computer.new("O")
    end
end