class Gallery
  @@all = [] 
  def initialize(name, city)
    @name = name
    @city = city
    @@all << self 
  end
  def self.all 
    @@all 
  end  
  attr_reader :name, :city
  
  def paintings
    Painting.all.select {|one_painting| one_painting.gallery == self }
  end 

  def artists 
    paintings.map {|one_painting| one_painting.artist}.uniq 
  end 

  def artist_names 
    artists.map {|one_artist_object| one_artist_object.name}
  end 
  
  def most_expensive_painting 
    paintings.max {|one_painting| one_painting.price}
  end 

end
