require_relative '../config/environment.rb'



a1 = Artist.new("a1", 1)
a2 = Artist.new("a1", 2)

g1 = Gallery.new("g1", "city1")
g2 = Gallery.new("g2", "city2")

p1 = Painting.new( "p1", 10, a1, g1)
p2 = Painting.new( "p2", 10, a1, g1)
p3 = Painting.new( "p3", 10, a1, g2)
p4 = Painting.new( "p4", 10, a2, g2)


binding.pry

puts "Bob Ross rules."
