class Event
  
  def initialize(name_of_place, attendees, date)
    @name_of_place = name_of_place
    @attendees = attendees
    @date = date
    @single_event = {}
  end
  
  def save_event
    @single_event[@date] = {@name_of_place => @attendees}
    
    @single_event
  end
end