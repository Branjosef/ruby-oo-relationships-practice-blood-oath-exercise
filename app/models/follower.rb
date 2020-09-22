class Follower
  attr_accessor :name, :age, :life_motto

@@followers = []

  def initialize (name, age, life_motto) #works
    @name = name
    @age = age.to_i
    @life_motto = life_motto
    @@followers << self
  end

  def join_cult(blood_oath, cult, date) #works
    BloodOath.new(blood_oath, self.name, cult.name, date)
    cult.recruit_follower(self)
    p "You have successfully joined #{cult.name}."
  end

  def self.all #works
    @@followers
  end

  def self.of_a_certain_age (age) #works
    self.all.select { |follower| follower.age == age }
  end

  def cults #works
    member = []
     Cult.all.each do |cult|
      if cult.followers.find {|name| name == self }
      #binding.pry
      member << cult.name
     end
    end
    member
  end

  def my_cults_slogans #works
    Cult.all.each do |cult|
      if cult.followers.find {|name| name == self }
      #binding.pry
      puts "#{cult.name}'s slogan is '#{cult.slogan}' and I like it!"
      end
    end
  end

end