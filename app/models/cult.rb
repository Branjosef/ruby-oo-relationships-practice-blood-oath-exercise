
class Cult

  attr_accessor :name, :location, :slogan
  attr_reader :founding_year

  @@cults = []

  def initialize (name, location, founding_year, slogan) #work
    #@name = name
    @location = location
    #@founding_year = founding_year.to_i
    @slogan = slogan
    @@cults << self
    @followers = []
  end
  

  def self.all  #works
    @@cults
  end

  def followers  #works - need this to access the @followers array
    @followers
  end

  def cult_population  #works
    @followers.count 
  end

  def recruit_follower(recruit) #works
    BloodOath.all.each do |oath|
      if oath.cult == self.name && oath.follower == recruit.name
        @followers.push(recruit)
      end
    end
  end

  def self.find_by_name(name) #works
    self.all.find {|cult| cult.name == name}
  end

  def self.find_by_location(location) #works
    self.all.select { |cult| cult.location == location }
  end

  def self.find_by_founding_year(year) #works
    self.all.select { |cult| cult.founding_year == year.to_i }
  end

  def average_age #works
    ages = self.followers.map {|follower| follower.age}
    x = ((ages.sum) / (ages.size)).to_f
    #binding.pry
  end

  def my_followers_mottos  #works  can use map to output as arraay
    self.followers.each {|follower| p follower.life_motto}
  end

  def self.least_popular #works
    counts = self.all.map {|cult| cult.followers.count}
    self.all.find do |cult| 
      cult.followers.count == counts.min
      return cult.name
    end
  end

  def self.most_common_location #works
    locations = self.all.map {|cult| cult.location}
    frequency = locations.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
    locations.max_by { |v| frequency[v] }
    #binding.pry
  end

end