require_relative '../config/environment.rb'
def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult1 = Cult.new("cult1", "location1", "2001", "slogan1")
cult2 = Cult.new("cult2", "location2", "2002", "slogan2")
cult3 = Cult.new("cult3", "location3", "2003", "slogan3")
cult4 = Cult.new("cult4", "location3", "2004", "slogan4")

follower1 = Follower.new("follower1", "21", "motto1")
follower2 = Follower.new("follower2", "22", "motto2")
follower3 = Follower.new("follower3", "23", "motto3")
follower4 = Follower.new("follower4", "24", "motto4")

follower1.join_cult("blood_oath1", cult1,"january 20, 2020")
follower1.join_cult("blood_oath2", cult2,"04-apr-2020")
follower1.join_cult("blood_oath3", cult3,"mar 10 2004")



binding.pry

#puts "Mwahahaha!" # just in case pry is buggy and exits