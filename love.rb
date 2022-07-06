puts "Do you love me? Please answer Y/N:"
answer = gets.chomp.downcase

while (answer == "n")
    puts "Don't worry I still love you!"
    answer = gets.chomp.downcase
end
