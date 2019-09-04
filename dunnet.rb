# dunnet clone written in Ruby by Ryan 

require 'yaml'
require_relative 'room'
require_relative 'player'
require_relative 'methods'

test = begin
  YAML.load(File.open("test.yml"))
rescue ArgumentError => e
  puts "Could not parse YAML: #{e.message}"
end

room_list = Array.new

test["rooms"].each do |room|
  room_list.push Room.new(room["name"], room["description"], room["inventory"], room["directions"], room["requirements"], room["rejectMessage"], room["light"], room["introMessage"])
end

puts room_list[0].directions["north"]