# Number guessing game in Ruby

#Generate a random Number
num = (1..100).to_a.sample
#set a counter
counter = 0

#prompt and get input from user
puts "So, I'm thinking of a number between 1 and 100...Can you guess what it is?"

#compare the guess to the randomly generated number
while counter < 5 	
    #store user input in a variable and call methods
	guess_num = gets.chomp.to_i
	if guess_num > num
	  counter += 1
	  puts "Too high...guess again"
	elsif guess_num < num
	  counter += 1
	  puts "Too low...guess again"
	elsif counter == 5
	  puts "You are out of guesses! Buh bye!"
	  break
	else 
	  puts "Right! Sweet." 
	  break
	end
 end

#other way around
puts "Think of a number between 1 and 100. Ok, got it? Good. Now, I'm going to guess it."


puts "Is it an even number? (Y/N)"
answer = gets.chomp.upcase
if answer == "Y"
	puts "Is it greater than or less than or equal to 50? (Enter E for equal to, G for greater than, L for less than)"
	guess = (1...100).step(1).to_a.sample.to_s
else 
	guess = (1...100).step(2).to_a.sample.to_s
	answer2 = gets.chomp.upcase
	if answer2 == "E"
		puts "Nailed it."
  	elsif answer2 == "G"
  		puts "Is it greater than or less than 75? (Enter G for greater than or L for less than)"
  		if answer2 == "E"
			puts "Nailed it."
  		elsif answer2 == "G"
  			puts "Is it greater than or less than 87? (Enter G for greater than or L for less than)"
   	elsif answer2 == "L"	
   		puts "Is it greater than or less than 25? (Enter G for greater than or L for less than)"
   		if answer2 == "G"
   			puts "Is it greater than or less than or equal to 13? (Enter G for greater than or L for less than)"
end
end
end 
end