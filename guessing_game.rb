class GuessingGame
  # game
  # losing_game
  # winning_game

  attr_reader :secret_number, :max_guesses, :completed, :guess_count
  attr_accessor :congrats_message

  def initialize(secret_number, max_guesses)
    @secret_number = secret_number
    @max_guesses = max_guesses
    @completed = false
    @guess_count = 0
    @guesses_array = []
    @current_integer = nil
    @congrats_message = "Yay, you won!"
    #@user_integer = user_integer
  end

  def remaining_guesses
    @max_guesses - @guess_count
    # goes down after every guess
    # does not go down for repeated guesses
    # Guesses on completed games do not alter remaining_guesses
    # Wrong guess deducts from remaining guesses
    # Repeated guesses do not deduct from remaining guesses
    # When one guess remaining: 'Too high! WARNING: Only one guess left!'
    # If last guess is same number as previous, WARNING again
  end

  def guess(user_integer)
    if !@guesses_array.include?(user_integer) # already guessed before?
      @guess_count += 1
      @guesses_array << user_integer
    end
    case user_integer
    when user_integer > @secret_number && @guess_count < @max_guesses
      puts "Too high!"
    when user_integer < @secret_number && @guess_count < @max_guesses
      puts "Too low!"
    end

    # Correct! The number was #{8}
    # Yay, you won! The number was #{100}
    # You lost! The number was #{8}
    # You already won. The number was 100
    # You already lost. The number was 999
  end

  def has_won?
    if @current_integer == @secret_number && @guesses_array.uniq.count <= max_guesses
      return true
    else
      return false
    end
    # true or false
  end

  def has_lost?
    false
    # true or false
  end

  # def congrats_message
  #   @congrats_message
  # end

  # def congrats_message
  #  # @congrats_message == "Correct!"
  # #   if "Yay, you won!"
  # #   "Correct!"
  # end

end
# drivercode
# game = GuessingGame.new(8, 5)
# p game.congrats_message
