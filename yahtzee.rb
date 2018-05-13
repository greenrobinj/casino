require_relative 'wallet'
require_relative 'dice'
require_relative 'yahtzee_score'
require 'pry'
require 'colorize'

class Yahtzee
attr_accessor :name, :age, :money
attr_accessor :roll, :singleroll, :show_dice
attr_accessor :scorecard, :score

  def initialize(person)
    @person = person
    @total_log = []
    @scorecard = Score.new
    game
  end

  def ones
    val = @current_log_mod.reject{|d| d != 1}.inject(0) {|sum, val| sum + val}
    puts "Would you like to use #{val} as your score for ones? [Y/N]"
    selection = gets.strip.downcase
     if selection == "y"
      @scorecard.player_score << {ones: val}
     else selection == "n"
      game
    end  
    game
  end 

  def twos
    val = @current_log_mod.reject{|d| d != 2}.inject(0) {|sum, val| sum + val}
    puts "Your twos are occupied by the value of #{val}"
    puts "Would you like to use #{val} as your score for twos? [Y/N]"
    selection = gets.strip.downcase
     if selection == "y"
      @scorecard.player_score << {twos: val}
     else selection == "n"
      game
    end
    game
  end

  def threes
    val = @current_log_mod.reject{|d| d != 3}.inject(0) {|sum, val| sum + val}
    puts "Your threes are occupied by the value of #{val}"
    puts "Would you like to use #{val} as your score for threes? [Y/N]"
    selection = gets.strip.downcase
     if selection == "y"
      @scorecard.player_score << {threes: val}
     else selection == "n"
      game
     end
    game
  end

  def fours
    val = @current_log_mod.reject{|d| d != 4}.inject(0) {|sum, val| sum + val}
    puts "Your fours are occupied by the value of #{val}"
    puts "Would you like to use #{val} as your score for fours? [Y/N]"
    selection = gets.strip.downcase
     if selection == "y"
      @scorecard.player_score << {fours: val}
     else selection == "n"
      game
     end
    game
  end

  def fives
    val = @current_log_mod.reject{|d| d != 5}.inject(0) {|sum, val| sum + val}
    puts "Your fives are occupied by the value of #{val}"
    puts "Would you like to use #{val} as your score for fives? [Y/N]"
    selection = gets.strip.downcase
     if selection == "y"
      @scorecard.player_score << {fives: val}
     else selection == "n"
      game
     end
    game
  end

  def sixes
    val = @current_log_mod.reject{|d| d != 6}.inject(0) {|sum, val| sum + val}
    puts "Your sixes are occupied by the value of #{val}"
    puts "Would you like to use #{val} as your score for sixes? [Y/N]"
    selection = gets.strip.downcase
     if selection == "y"
      @scorecard.player_score << {sixes: val}
     else selection == "n"
      game
     end
    game
  end

  def view_card
   puts "#{@person.name}, here is your card:"
   puts @scorecard.player_score 
  end


  def game
    # print `clear`
    puts "\n"
    puts "Welcome to Yahtzee #{@person.name}"
    puts "Press 1 to roll".colorize(:yellow)
    puts "Press 2 to see your scorecard".colorize(:red)
    puts "Any other key will ESC"
    input = gets.strip.to_i
    if input == 1
      current_roll = Dice.new()
      # puts current_roll.show_dice this is not working with the numbers!
      @total_log << current_roll.roll 
      num = @total_log.length
      @current_log_mod =  @total_log[num - 1]
      print @current_log_mod
      select_dice
    elsif input == 2
      view_card
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