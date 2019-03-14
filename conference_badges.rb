# Write your code here.
def badge_maker(name)
  "Hello, my name is #{name}."
end


def batch_badge_creator(array)
  array.map do |name|
    badge_maker(name)
  end
end

def assign_rooms(attendees)
  new_array = []
  attendees.each_with_index do |attendee, room_number|
    assignment = "Hello, #{attendee}! You'll be assigned to room #{room_number+1}!"
    new_array << assignment
  end
  new_array
end

def printer(attendees)
  batch_badge_creator(attendees).each do |badge|
    puts badge
  end
  assign_rooms(attendees).each do |assignment|
    puts assignment
  end
end


