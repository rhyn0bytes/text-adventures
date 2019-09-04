# The functions used to support playing a text adventure game. Future work will 
# focus on making these functions more generic with the ability for special 
# functions to be added at file load

def gputs(text)                         # Simple way to make ruby puts output green
  puts "\e[32m" + text + "\e[0m\n"
end

def describe_room(player)                 # Port of dunnet describe room function
  # if !player.room.light && player.inventory.lamp
end

def special_object()                    # Port of dunnet special object function
end

def die(killer)

end

