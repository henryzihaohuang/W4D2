require "byebug"
class WrongInputTypeError < TypeError; end
# PHASE 2
def convert_to_int(str)
  begin
  Integer(str)
  rescue 
    raise WrongInputTypeError.new("String wont go into Integer")
  end
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  else 
    raise StandardError 
  end 
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"
  begin
  puts "Feed me a fruit! (Enter the name of a fruit:)"
  maybe_fruit = gets.chomp
  reaction(maybe_fruit) 
  rescue
    puts "Give me coffee!"
    input = gets.chomp
    if input == "coffee"
      puts "Thank you for the coffee :)"
      retry
    end
  end
end  

# PHASE 4
class BestFriend
  def initialize(name = nil, yrs_known = 0, fav_pastime = nil)
    @name = name
    @fav_pastime = fav_pastime
    @yrs_known = yrs_known
    begin
    raise ArgumentError.new("Not A Best Friend !!!") if @yrs_known < 5
    raise ArgumentError.new("No Name Was Entered") if @name.nil?
    raise ArgumentError.new("No Fav Hobby Entered") if @fav_pastime.nil?

    rescue ArgumentError => e
      puts "Error was: #{e}"
    end
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


# convert_to_int("hello")
# feed_me_a_fruit

friend = BestFriend.new("Name", 6,"Swimming")