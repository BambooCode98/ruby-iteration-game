p "Enter a number:"
total = gets.chomp.to_f
p "Enter an iterator:"
iterator = gets.chomp.to_f

loop do

    total += iterator
    p "Total so far: #{total}"
    stop = gets.chomp.downcase
    
    if stop == "quit"
        p "goodbye"
        break
    elsif stop == "change"
        p "Keep previous total? Y/N"
        choice = gets.chomp.downcase
        if choice == "n"
            total = 0
            p "Enter new iterator:"
            iterator = gets.chomp.to_f
        else choice == "y"
            p "Enter new iterator:"
            iterator = gets.chomp.to_f
        end
    elsif stop == "restart"
        p "Keep iterator? Y/N"
        iterator_choice = gets.chomp.downcase
        if iterator_choice == "y"
            total = 0
            p "choose a new number:"
            total = gets.chomp.to_f
        else iterator_choice == "n"
            total = 0
            p "choose a new number:"
            total = gets.chomp.to_f
            p "choose a new iterator:"
            iterator = gets.chomp.to_f
        end
    elsif stop == "help"
        puts "Commands: 
            -help: provides instructions
            -quit: stop the game
            -change: allows you to enter a new iterator
            -restart: allows you to choose a new number to start from"
    end
end

