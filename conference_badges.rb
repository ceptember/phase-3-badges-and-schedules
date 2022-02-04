# Write your code here.
def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(arr)
    arr.map { |i| "Hello, my name is #{i}." }
end

def assign_rooms(speakers)
    room = 1 
    greetings = []
    while room < 8 && speakers.length >= room do 
        greetings.push("Hello, #{speakers[room-1]}! You'll be assigned to room #{room}!")  
        room +=1 
    end
    greetings
end

def printer(speakers)
    badges = batch_badge_creator(speakers)
    assignments = assign_rooms(speakers)
    badges.each { |x| puts x}
    assignments.each { |x| puts x}
end

printer(["a", "b", "c"])