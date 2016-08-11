class GuessingGame
  attr_accessor :congrats_message
  attr_reader :remaining_guesses

  def initialize(secret_number, allowed_guesses)
    @secret_number = secret_number
    @remaining_guesses = allowed_guesses
    @congrats_message = "Yay, you won!"
    @past_guesses = []
  end

  def has_lost?
    @remaining_guesses == 0 && !has_won?
  end

  def has_won?
    @current_guess == @secret_number
  end

  def game_complete?
    if has_lost?
      return "You already lost. The number was #{@secret_number}"
    elsif has_won?
      return "You already won. The number was #{@secret_number}"
    end
  end

  def guess(number)


    return game_complete? if game_complete?

    if !@past_guesses.include?(number)
      @remaining_guesses -= 1
      @past_guesses << number
    end

    @current_guess = number
    if number == @secret_number
      response = @congrats_message
      response += " The number was #{number}"
      return response
    elsif number < @secret_number
      response = "Too low!"
    else
      response = "Too high!"
    end
    if @remaining_guesses == 1
      response += " WARNING: Only one guess left!"
    elsif @remaining_guesses == 0
      return "You lost! The number was #{@secret_number}"
    end
    response
  end


end
