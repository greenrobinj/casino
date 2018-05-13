require_relative 'wallet'
require_relative 'dice'
require 'pry'
require 'colorize'

class Yahtzee
attr_accessor :name, :age, :money
attr_accessor :roll, :singleroll, :show_dice

  def initialize(person)
    @person = person
    @total_log = []
    game
  end

  def ones
    val = @current_log_mod.reject{|d| d != 1}.inject(0) {|sum, val| sum + val}
    puts "Your ones are occupied by the value of #{val}"
    game
  end 

  def twos
    val = @current_log_mod.reject{|d| d != 2}.inject(0) {|sum, val| sum + val}
    puts "Your twos are occupied by the value of #{val}"
    game
  end

  def threes
    val = @current_log_mod.reject{|d| d != 3}.inject(0) {|sum, val| sum + val}
    puts "Your threes are occupied by the value of #{val}"
    game
  end

  def fours
    val = @current_log_mod.reject{|d| d != 4}.inject(0) {|sum, val| sum + val}
    puts "Your fours are occupied by the value of #{val}"
    game
  end

  def fives
    val = @current_log_mod.reject{|d| d != 5}.inject(0) {|sum, val| sum + val}
    puts "Your fives are occupied by the value of #{val}"
    game
  end

  def sixes
    val = @current_log_mod.reject{|d| d != 6}.inject(0) {|sum, val| sum + val}
    puts "Your sixes are occupied by the value of #{val}"
    game
  end

  def game
    print `clear`
    puts "Hit 1 to roll".colorize(:yellow)
    puts "Any other key will ESC"
    input = gets.strip.to_i
    if input == 1
      current_roll = Dice.new()
      # puts current_roll.show_dice this is not working with the numbers!
      @total_log << current_roll.roll #this is the stand in
      num = @total_log.length
      @current_log_mod =  @total_log[num - 1]
      print @current_log_mod
      select_dice
    else
      exit  
    end
  end

  def select_dice
    puts "What would you like to fill?"
    selection = gets.strip.to_i
    case selection 
    when 1
      ones
    when 2
      twos
    when 3
      threes
    when 4
      fours
    when 5
      fives
    when 6
      sixes
    else
      game
    end
  end





end

    # def keep_score
  #   puts "Your score card is:"
  #   # puts "\t1) Ones: #{@one_sum}"
  #   #two  = sum
  #   #three = sum
  #   #four = sum
  #   #five = sum
  #   #six = sum

  #   #bonus - if over 63 add 35

  #   #three of a kind - add total
  #   #four of a kind - add total
  #   #full house - score of 25
  #   #Small straight: 4 dice - 30 pts
  #   #large straight: 5 dice - 40 pts
  #   #yahtzee (bonus yahtzee) - 100 pts
  #end