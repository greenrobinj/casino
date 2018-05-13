class Dice
  attr_accessor :roll, :singleroll, :show_dice

  def initialize()
  end

  def roll
    @die1 = 1 + rand(6)
    @die2 = 1 + rand(6)
    @die3 = 1 + rand(6)
    @die4 = 1 + rand(6)
    @die5 = 1 + rand(6)
    singleroll
  end

  def singleroll
    @singleroll = [@die1, @die2, @die3, @die4, @die5]
    # binding.pry
    # show_dice
  end

  def show_dice
    print "\t🎲  #{@die1} \t🎲  #{@die2} \t🎲  #{@die3} \t🎲  #{@die4} \t🎲  #{@die5}\n"
  end
end