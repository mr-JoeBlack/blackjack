print "Greetings, player, What is your name? "

name = gets.chomp

name  = "Player" if name.nil? || name.empty?

puts "Well, #{name}, let's play"
