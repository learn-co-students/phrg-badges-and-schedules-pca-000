require "pry"

def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(array)
  array.map do |name|
    badge_maker(name)
  end
end

def assign_rooms(speakers)
  speakers.each_with_index.map { |attendees, room| "Hello, #{attendees}! You'll be assigned to room #{room+1}!" }
end

def printer(attendees)
  batch_badge_creator(attendees).zip assign_rooms(attendees) do |items|
    puts items[0]
    puts items[1]
  end
end
