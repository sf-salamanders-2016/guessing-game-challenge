class GuessingGame

  attr_accessor :guesses_left, :current_guess, :game_active
  attr_reader :secret_num

  def initialize(secret_num, guesses)
    @secret_num = secret_num
    @guesses_left = guesses
    @message = "Yay, you won!"
    @current_guess = nil
    @game_active = true
    @won = false
    @lost = false
  end

  def congrats_message
    @message
  end

  def congrats_message=(str)
    @message = str
  end

  def remaining_guesses
    @guesses_left
  end

  def has_won?

    if @secret_num == @current_guess
      @won = true
    else
      @won = false
    end
  end

  def has_lost?
    if @guesses_left == 0 && @secret_num != @current_guess
      @lost = true
    else
      @lost = false
    end
  end

  def guess(number)
    if game_active == true
      response = ""

      if @current_guess != number
        @guesses_left -= 1
      end

      if @guesses_left == 1
        congrats_message=("Yay, you won!")
      end

      # if @guesses_left == 0 && has_won? == false
      #   return response = "You lost! The number was #{secret_num}"
      # end

      has_lost?
      # p "this is a response before #{response}"
      # p "this is has_lost #{has_lost?}"
      if @lost == true
        # congrats_message=("You lost!")
        return response = "You lost! The number was #{secret_num}"
      end
       # p "this is a response before #{response}"

      #Binary Search
      if number == @secret_num
        response = "#{@message} The number was #{number}"

      elsif number < @secret_num
        response = 'Too low!'
      elsif number > @secret_num
        response = 'Too high!'
      end

      @current_guess = number

      if has_won? == false
        if @guesses_left == 1
          response += ' WARNING: Only one guess left!'
           # p response
        end
      end

      # if has_won? == true && @guesses_left > 0
      #   "You already won. The number was #{number}"
      # end

      response
    else

    end
  end




end
