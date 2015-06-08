class Dinnerclub
  
  attr_reader :member
  
  #Turns input member array into hash with value of 0
  def initialize(member_array)
    @member = {}
    member_array.each do |a|
      member[a] = []
    end
  end
    
  #Method for going out to eat
  # First creates a new checksplitter with the information provided
  # Finds the total_split per person
  # Adds the total_split to the hash
  def going_out(meal_cost, tip_percentage, attendees)
    dinner = Checksplitter.new(meal_cost, tip_percentage, attendees.length)
    @split_attendees = attendees
    @total_split = dinner.total_split
    @one_person = dinner.total_cost
  end
  
  # - My problem here is that when I run this method multiple times, it overwrixtes the previous one.
  #
  #
    def event(name_of_place, attendees, cost)
      @name_of_place = name_of_place
      @attendees = attendees
      @cost = @total_split
      attendees.each do |a|
        member[a].push({@name_of_place => @total_split})
    end
      
end
end
 