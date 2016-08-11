
class GuessingGame
  attr_accessor :congrats_message, :remaining_guesses
  def initialize(secret_number,remaining_guesses)
    @secret_number = secret_number
    @remaining_guesses = remaining_guesses
    @congrats_message = 'Congrats'
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
    warning = ''
    if @secret_number == number
      store_guess(number)
      @won = true
      return @congrats_message
    end
    unless @secret_number == number
      if @secret_number < number
        store_guess(number)
        return "Too high!" + ' ' + warning
      end
      if @secret_number > number
        store_guess(number)
        return "Too low!" + ' ' + warning
      end
      # if @all_guesses.include?(number)
      #   return

    end
  end
  private

  def store_guess(number)
    if !@all_guesses.include?(number)
      @all_guesses << number
      @remaining_guesses -= 1
    end
    if @remaining_guesses == 1
      puts "WARNING: Only one guess left!"
    else
      puts ''
    end
  end

end

# game = GuessingGame.new(8, 5)
# p game.has_won?




