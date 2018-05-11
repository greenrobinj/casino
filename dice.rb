
class Dice
    def initialize
      roll
    end
    
    def roll
      @die1 = 1 + rand(6)
      @die2 = 1 + rand(6) 
      @die3 = 1 + rand(6)
      @die4 = 1 + rand(6)
      @die5 = 1 + rand(6)
    end
    
    def show_dice
      print "Die1: ", @die1, "Die2:", @die2, "Die3: ", @die3, "Die4:" @die4, "Die5: ", @die5
    end
    
    def show_sum
      print "Sum of dice is ", @die1 + @die2 + @die3 + @die4
    end 
   end
  end

