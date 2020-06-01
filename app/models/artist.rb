class Artist
  @@all = [] 
  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self 
  end
  def self.all 
    @@all 
  end 
  attr_reader :name, :years_experience

  def paintings 
    Painting.all.select {|one_painting| one_painting.artist == self }
  end 
  
  def galleries 
    self.paintings.map {|one_painting| one_painting.gallery}.uniq 
  end 

  def cities 
    self.galleries.map {|one_gallery| one_gallery.city}.uniq 
  end 

  def self.total_experience 
    @@all.sum {|one_artist| one_artist.years_experience}
  end 

  def painting_rate
    self.paintings.size.to_f / @years_experience
  end 

  def self.most_prolific 
    @@all.max(1) {|one_artist| one_artist.painting_rate}
  end 

  def create_painting(title,price,gallery)
    Painting.new(title, price, self, gallery)
  end 
end
