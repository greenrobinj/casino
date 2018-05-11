class Wallet
  attr_accessor :money, :increase, :decrease, :add_money, :wallet

  def initialize(money)
    @money = money
  end

  # def money
  #   x = @money
  # end

  # def increase(x)
  #   @wallet = x + 5
  # end

  # def decrease(x)
  #   @wallet = x - 5
  #   if @wallet == 0
  #     puts "Thanks for playing"
  #     exit
  #   end
  # end

end
