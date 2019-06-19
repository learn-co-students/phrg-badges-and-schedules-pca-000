def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(names)
  names.collect{|name| "Hello, my name is #{name}."}
end

def assign_rooms(speakers)
  speakers.each_with_index.collect do |name, index|
    room = "Hello, #{name}! You'll be assigned to room #{index+1}!"
  end
end

def printer(names)
  batch_badge_creator(names).each{|badge| puts badge}
  assign_rooms(names).each{|room| puts room}
end
