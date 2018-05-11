class Wallet
  attr_accessor :money, :increase, :decrease, :add_money, :wallet

  def initialize(money)
    @money = money
  end

<<<<<<< HEAD


=======
<<<<<<< HEAD
  # def money
  #   x = @money
  # end
>>>>>>> fix under 20 sound

  # def increase(x)
  #   @wallet = x + 5
  def self.money
    x = @money
  end

#   def self.money
#     x = @money
#   end


#   def self.increase
#     @money = x + 5
#   end

  def self.decrease
    @money = x - 5
  if @money == 0
    puts "Thanks for playing"
    exit
  else
    puts "Nice! Keep playing"
  end
end

  # def self.add_money
  #   puts "How much would you like to add?"
  #    y = gets.strip.to_i
  #    @money += y
  #   binding.pry
  # end
=======
  def self.money
    @x = @money
  end


  def self.increase
    @money = @x + 5
  end


  def self.decrease
    @money = @x - 5
  if @money == 0
    puts "Thanks for playing"

    exit
  else
  end

  def self.add_money
    puts "How much would you like to add?"
     y = gets.strip.to_i
     @money = @x + y
    binding.pry
  end
>>>>>>> fix under 20 sound

  # def decrease(x)
  #   @wallet = x - 5
  #   if @wallet == 0
  #     puts "Thanks for playing"
  #     exit
  #   end
  # end

end
