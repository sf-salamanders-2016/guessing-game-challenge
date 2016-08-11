
class GuessingGame
  attr_accessor :congrats_message, :remaining_guesses
  def initialize(secret_number,remaining_guesses)
    @secret_number = secret_number
    @remaining_guesses = remaining_guesses
    @congrats_message = "Correct! The number was #{@secret_number}"
    @won = false
    @lost = false
    @all_guesses = []
    # @remaining_guesses = 5 #default number of guesses
  end

  def has_won?
    @won
  end

  def has_lost?
    @lost
  end

  def guess(number)
    # warning = ''
    if @secret_number == number
      store_guess(number)
      @won = true
      return @congrats_message
    end
    unless @secret_number == number
      if @remaining_guesses > 1
        store_guess(number)
      end
      # if @secret_number < number
      #   store_guess(number)
      # end
      # if @secret_number > number
      #   store_guess(number)
      # end
      if @remaining_guesses == 1
        # store_guess(number)
        # return "#{store_guess(number)}WARNING: Only one guess left!"
      end
  end
    end

  private

  def store_guess(number)
    if !@all_guesses.include?(number)
      @all_guesses << number
      @remaining_guesses -= 1
    end
    if @secret_number < number
      puts "Too high!"
    end
    if @secret_number > number
      puts "Too low!"
    end
  end

end

game = GuessingGame.new(8, 5)
p game.guess(8)




