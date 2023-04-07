# Write your code here.
def badge_maker name
    "Hello, my name is #{name}."
end

def batch_badge_creator name_arr
    name_arr.map do |person|
        badge_maker(person)
    end
end

def assign_rooms name_arr
    name_arr.map.with_index(1) do |person, index|
        "Hello, #{person}! You'll be assigned to room #{index}!"
    end
end

def printer name_arr
    batch_badge_creator(name_arr).each {|person| puts person}
    assign_rooms(name_arr).each {|person| puts person}
end