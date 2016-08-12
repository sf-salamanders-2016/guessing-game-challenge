class GuessingGame

  attr_accessor :guesses_left, :current_guess, :response, :game_finished
  attr_reader :secret_num

  def initialize(secret_num, guesses)
    @secret_num = secret_num
    @guesses_left = guesses
    @message = "Yay, you won!"
    @current_guess = nil
    @response = ''
    @game_finished = nil
  end

  def congrats_message
    @message
  end

  def congrats_message=(str)
    @message = str
  end

  def remaining_guesses
    if @guesses_left == 1
      @response += ' WARNING: Only one guess left!'
    elsif @guesses_left == 0
      @response += "You lost! The number was #{secret_num}"
    elsif @guesses_left < 0
      @response += "You already lost. The number was #{@secret_num}"
    end
    @guesses_left
  end

  def has_won?
    false
  end

  def has_lost?
    false
  end

  def deduct_guesses_left
    @guesses_left -= 1
  end

  def guess(number)
    @response = ''


    if @game_finished != true
      if number != @current_guess
        @current_guess = number
        deduct_guesses_left
      end
      p @guesses_left

      if number == @secret_num
        @response += @message + " The number was #{number}"
        @game_finished = true
        return @response
      end

      if @guesses_left > 0
        if number < @secret_num
          @response = "Too low!"
        elsif number > @secret_num
          @response = "Too high!"
        end
      end
      remaining_guesses
      @response
    else
        "You already won. The number was #{@secret_num}"
    end


  end









end

__END__

    if @current_guess != number && game_active == true
      has_won?
      p "this is has_won #{has_won?}"
      p "current guess #{current_guess}"
      if @won == false
        @guesses_left -= 1
      end
    end

    has_lost?
    # p "#{game_active} this is game_active"
    if game_active == true
      response = ""

      # if @current_guess != number
      #   @guesses_left -= 1
      # end

      if @guesses_left == 1
        congrats_message=("Yay, you won!")
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
    elsif game_active == false
      response = "You lost! The number was #{@secret_num}"
      p response
      response
    end
  end




end
