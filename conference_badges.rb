def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator (attendees)
  array = []
  attendees.each do |name|
    array.push("Hello, my name is #{name}.")
  end
  return array
end

def assign_rooms(attendees)
  attendees.each_with_index.map do |attendee, index|
    "Hello, #{attendee}! You'll be assigned to room #{index+1}!"
  end
end

def printer(attendees)
  batch_badge_creator(attendees).each do |badge|
    puts badge
  end

   assign_rooms(attendees).each do |assignment|
    puts assignment
  end
end
