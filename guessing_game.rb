class GuessingGame
  attr_accessor :congrats_message
  attr_reader :remaining_guesses

  def initialize(secret_number, allowed_guesses)
    @secret_number = secret_number
    @allowed_guesses = allowed_guesses
    @congrats_message =
      'Yay, you won!'
    @remaining_guesses = @allowed_guesses
  end

  def has_won?
    false
  end

  def has_lost?
    false
  end

  def guess(number)
    if number < @secret_number
      @remaining_guesses -= 1
      "Too low!"
    elsif number > @secret_number
      @remaining_guesses -= 1
      "Too high!"
    end

  end
end








