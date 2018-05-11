class Wallet
  attr_accessor :money, :increase, :decrease, :add_money

  def initialize
    money
    increase
    decrease
    add_money
  end

  def self.money
    x = @money
  end


  def self.increase
    @money = x + 5
  end


  def self.decrease
    @money = x - 5
  if @money == 0
    puts "Thanks for playing"

    exit
  else
  end

  def self.add_money
    puts "How much would you like to add?"
     y = gets.strip.to_i
     @money += y
    binding.pry
  end




  end
end
