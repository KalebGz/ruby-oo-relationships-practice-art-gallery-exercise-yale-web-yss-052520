class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery

    @@all << self
  end

  def self.all
    @@all
  end

  def self.total
    self.all.sum(&:price)
  end
end

# PAINTING
# Painting.all
# Returns an array of all the paintings
# Painting.total_price
# Returns an integer that is the total price of all paintings