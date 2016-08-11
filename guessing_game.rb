class GuessingGame
  attr_accessor :congrats_message
  attr_reader :remaining_guesses

  def initialize(secret_number, allowed_guesses)
    @secret_number = secret_number
    @allowed_guesses = allowed_guesses
    @congrats_message =
      'Yay, you won!'
    @remaining_guesses = @allowed_guesses
    @guessed_numbers = []
  end

  def has_won?
    false
  end

  def has_lost?
    false
  end

  def guess(number)
    if @remaining_guesses <= 1
      @remaining_guesses -= 1
      return "You lost! The number was #{@secret_number}"
    end

    if @guessed_numbers.include?(number) && number < @secret_number
      if @remaining_guesses == 1
        return "Too low! WARNING: Only one guess left!"
      end
      return "Too low!"

    elsif @guessed_numbers.include?(number) && number > @secret_number
      if @remaining_guesses == 1
        return "Too high! WARNING: Only one guess left!"
      end
      return "Too high!"

    end

    if number < @secret_number
      @remaining_guesses -= 1
      if @remaining_guesses == 1
        @guessed_numbers << number
        return "Too low! WARNING: Only one guess left!"
      end
      @guessed_numbers << number
      "Too low!"
    elsif number > @secret_number
      @remaining_guesses -= 1
      if @remaining_guesses == 1
        @guessed_numbers << number
        return "Too high! WARNING: Only one guess left!"
      end
      @guessed_numbers << number
      "Too high!"
    else
      congrats_message + " The number was #{@secret_number}"
    end

  end
end








