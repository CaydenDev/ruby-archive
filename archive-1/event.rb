class Event
  attr_accessor :name, :date

  def initialize(name, date)
    @name = name
    @date = date
  end
end

class EventManager
  def initialize
    @events = []
  end

  def add_event(event)
    @events << event
  end

  def list_events
    @events.each do |event|
      puts "#{event.name} - Date: #{event.date.strftime('%Y-%m-%d')}"
    end
  end
end

event_manager = EventManager.new
event_manager.add_event(Event.new('Ruby Workshop', Date.new(2023, 11, 10)))
event_manager.add_event(Event.new('Music Festival', Date.new(2023, 12, 5)))
event_manager.list_events
