class GuessingGame
  attr_accessor :congrats_message
  attr_reader :remaining_guesses

  def initialize(desired_number, number_of_guesses)
    @desired_number = desired_number
    @number_of_guesses = number_of_guesses
    @congrats_message = "Yay, you won!"
    @remaining_guesses = number_of_guesses
    @guesses = []
  end

  def guess(num)
    @num = num
    if has_won?
      response = "You already won. The number was #{@desired_number}"
    elsif has_lost?
      response = "You already lost. The number was #{@desired_number}"
    else

      if num > @desired_number
        if @remaining_guesses == 2
          response = "Too high! WARNING: Only one guess left!"
        elsif @remaining_guesses == 1
          response = "You lost! The number was #{@desired_number}"
        else
          response = "Too high!"
        end
      elsif num < @desired_number
        if @remaining_guesses == 2
          response = "Too low! WARNING: Only one guess left!"
        elsif @remaining_guesses == 1
          response = "You lost! The number was #{@desired_number}"
        else
          response = "Too low!"
        end
      else
        response = @congrats_message + " The number was #{num}"
      end

      if !@guesses.include?(num)
        @remaining_guesses -= 1
      end

      @guesses << num

    end
    response
  end

  def has_won?
    @remaining_guesses == 0 && @num == @desired_number
  end

  def has_lost?
    @remaining_guesses == 0 && @num != @desired_number
  end

end




