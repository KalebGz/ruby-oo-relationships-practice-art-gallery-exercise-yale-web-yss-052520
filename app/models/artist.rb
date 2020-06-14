class Artist

  attr_reader :name, :years_experience

  @@all = []
  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    @@all << self
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end


  def paintings
    Painting.all.select{|painting| painting.artist == self}
  end

  def galleries
    paintings.map(&:gallery)
  end

  def cities
    galleries.map(&:city)
  end

  def self.total_experience
    Artist.all.sum(&:years_experience)
  end

  def self.most_prolific
    Artist.all.max{|artist| artist.paintings.count / artist.years_experience}
  end

  def self.all
    @@all
  end

end

# ARTIST
# Artist.all
# Returns an array of all the artists
# Artist#paintings
# Returns an array all the paintings by an artist
# Artist#galleries
# Returns an array of all the galleries that an artist has paintings in
# Artist#cities
# Return an array of all cities that an artist has paintings in
# Artist.total_experience
# Returns an integer that is the total years of experience of all artists
# Artist.most_prolific
# Returns an instance of the artist with the highest amount of paintings per year of experience.
# Artist#create_painting
# Given the arguments of title, price and gallery, creates a new painting belonging to that artist
