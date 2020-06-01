class Painting
  @@all = [] 
  def initialize(title, price, artist, gallery)
    @title = title
    @price = price.to_f 
    @artist = artist 
    @gallery = gallery 
    @@all << self 
  end
  attr_reader :title, :price, :artist 
  attr_accessor :gallery 
  def self.all 
    @@all 
  end 

  def self.total_price 
    self.all.sum {|one_painting| one_painting.price}
  end 
end
