require_relative '../config/environment.rb'


joe = Artist.new("joe", 15)
jack = Artist.new("jack", 12)

g1 = Gallery.new("Smithisonian", "DC")
g2 = Gallery.new("British Art Gallery", "CT")

p1 = Painting.new("Stary Night", 2000, joe, g1)
p2 = Painting.new("BIG CAT", 900, joe, g2)
p3 = Painting.new("Vase", 3, jack, g1)

binding.pry

puts "Bob Ross rules."
