require "minitest/autorun"
require_relative "check_splitter.rb"

class CheckSplitterTest < Minitest::Test
  # Should initialize with 3 arguements (meal_cost, tip_percentage, number_of_people)
  # meal_cost & tip_percentage should be floats.
  # number_of_people should be an integer.
  
  def test_initialize_meal_cost
    dinner = Checksplitter.new(20, 20, 4)
    
    assert_equal(dinner.meal_cost, dinner.meal_cost.to_f)
  end
  
  def test_initialize_tip_percentage
    dinner = Checksplitter.new(20, 20, 4)
    
    assert_equal(dinner.tip_percentage, dinner.tip_percentage.to_f)
  end
  
  def test_initialize_number_of_people
    dinner = Checksplitter.new(20, 20, 4)
    
    assert_equal(dinner.number_of_people, dinner.number_of_people.to_i)
  end
  
  # tip should divide tip_percentage by 100 to get the decimal percentage
  # should multiply that by mealcost
  # should return total cost of the tip - Float
  
  def test_tip
    dinner = Checksplitter.new(20, 20, 4)
    
    assert_equal(dinner.tip, ((dinner.tip_percentage / 100) * dinner.meal_cost).to_f)
  end
  
  
  # total_cost should add the meal_cost and the tip
  # should return total cost of meal - Float
  
  def test_total_cost
    dinner = Checksplitter.new(20, 20, 4)
    
    assert_equal(dinner.total_cost, (dinner.meal_cost + dinner.tip).to_f)
  end
  
  # total_split should split the total cost of the meal by number_of_people
  # should return each persons split - Float
  
  def test_total_split
    dinner = Checksplitter.new(20, 20, 4)
    
    assert_equal(dinner.total_split, (dinner.total_cost / dinner.number_of_people))
  end
end
  