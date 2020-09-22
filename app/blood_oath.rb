require 'date'

class BloodOath


  attr_accessor :initialization_date, :follower, :cult, :name

@@all = []

  def initialize ( name, follower, cult, date) #works
    @name = name
    @follower = follower
    @cult = cult
    @initialization_date = self.init_date(date)
    @@all << self
  end

  def init_date(date) #works  - parse interprets as european time (DD-MM-YY)
    #binding.pry
    init_date = "#{Date.parse(date)}"
    #binding.pry
    #init_date = x.split(" ")
    #init_date[0]
  end

  def self.all
    @@all
  end

  def self.find_by_name(name) #works
    self.all.find {|oath| oath.name == name}
  end

  def self.find_by_follower(name) #works
    self.all.select {|oath| oath.follower == name}
  end
  


end