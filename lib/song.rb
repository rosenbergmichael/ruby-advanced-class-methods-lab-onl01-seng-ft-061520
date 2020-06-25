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
    song = self.new 
    song.save    
    song 
  end   

  def self.new_by_name(string_name) 
    song = self.new 
    song.name = string_name 
    song
  end 

  def self.create_by_name(string_name) 
    song = self.new 
    song.name = string_name 
    song.save 
    song 
  end 

  def self.find_by_name(name)
   @@all.find{|person| person.name == name}
  end

  def self.find_or_create_by_name(string_name) 
    self.find_by_name(string_name) || self.create_by_name(string_name)
  end   

  def self.alphabetical
    @@all.sort_by{|n| n.name}   
  end   

 
 
  def self.new_from_filename(filename)
    parts = filename.split("-")
    artist_name = parts[0]
    song_name = parts[1].gsub(".mp3", "")
  
    song = self.new 
    song.name = song_name 
    
  end 



  def self.create_from_filename(filename)
    
  end 
  
  
  
  def self.destroy_all 
    @@all = []
  end 
  
end

