class Checksplitter
  
  #writing a getter method
  attr_reader :meal_cost, :tip_percentage, :number_of_people
  
  def initialize(meal_cost, tip_percentage, number_of_people)
    @meal_cost = meal_cost.to_f
    @tip_percentage = tip_percentage.to_f
    @number_of_people = number_of_people.to_i
  end
  
  #figures out tip amount, also converts tip % to decimal.
  def tip
    meal_cost * (tip_percentage / 100.0)
  end
  
  #adds tip amount to meal_cost
  def total_cost
    meal_cost + tip
  end
  
  #total amount per person after split
  def total_split
    total_cost / number_of_people
  end
    
end
 