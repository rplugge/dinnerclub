require_relative "event.rb"
require_relative "dinner_club.rb"

puts "Let's start a dinner club!"
puts "First, who's part of this club? (E.g. - Rob, Amber, Zach, Jeremiah)"

people = gets.chomp
my_club = Dinnerclub.new(people.split(", "))

puts "Alright, go out to eat?"
answer = gets.chomp.capitalize


# First, checks to see if they want to continue
# Then gathers the required information (meal_cost, tip_percentage, attendees)
# Put's the people who are coming (split by comma and space) into an array to use in dinner_club)
# Then displays the answer after completing dinner_club.rb and check_splitter.rb
while answer != "No"
  puts "What was the cost of the meal?"
  meal_cost = gets.chomp
  
  puts "How much did you tip? (E.g. 20%)"
  tip_percent = gets.chomp
  
  puts "Who's going?"
  attendees = gets.chomp
  
  puts "Where are you going?"
  name_of_place = gets.chomp
  
  puts "What is the date?"
  date = gets.chomp.to_s
  
  attendees_array = attendees.split(", ")
  
  puts my_club.going_out(meal_cost, tip_percent, attendees_array)

  event = Event.new(name_of_place, attendees, date)

  puts event.save_event
  
  #Checks to see if they want to continue.
  puts "Go out to eat again?"
  answer = gets.chomp.capitalize
end
