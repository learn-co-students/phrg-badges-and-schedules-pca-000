
require "pry"

def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(names)
  badges = []
  names.each do |n|
    i = "Hello, my name is #{n}."
    badges << i
  end
  badges
end

def assign_rooms(attendees)
  room_assignments = []
  room = 1
  attendees.each do |n|
    i = "Hello, #{n}! You'll be assigned to room #{room}!"
    room += 1
    room_assignments << i
  end
  room_assignments
end

def printer(attendees)
  batch_badge_creator(attendees).each do |badge|
    puts badge
  end
  assign_rooms(attendees).each do |room_assignment|
    puts room_assignment
  end
end

