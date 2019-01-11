class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end
  
  def save
    self.class.all << self
  end
  
  def self.create
    song_new = self.new
    @@all << song_new
    song_new
  end 
  
  def self.new_by_name(name)
    song = self.new 
    song.name = name 
    song 
  end 
  
  def self.create_by_name(name)
    song = self.new 
    song.name = name 
    @@all << song 
    song 
  end 
  
  def self.find_by_name(name)
    @@all.find {|song| song.name == name}
  end 
  
  def self.find_or_create_by_name(name)
    if find_by_name(name) == nil 
      create_by_name(name)
    else 
      find_by_name(name)
    end 
  end 
  
  def self.alphabetical
    @@all.sort_by {|song| song.name}
  end 
  
  def self.new_from_filename(filename)
    new_file = filename.split("-")
    artist = new_file[0]
    sonngs = rows.collect do |row|
      data = row.split 
    end 
  end 
  
  def self.create_from_filename(name)
  end 
  
  def self.destroy_all 
    @@all.clear
  end 

end
