class GuessingGame
  attr_accessor :congrats_message
  attr_reader :remaining_guesses

  def initialize(secret_num, max_guesses)
    @secret_num = secret_num
    @max_guesses = max_guesses
    @congrats_message = "Yay, you won!"
    @remaining_guesses = max_guesses
    @guess = 0
    @guesses = []
    @finished_game = ""
    # @finished_game = false
  end

  def guess(num)
    @guess = num
     return "You already won. The number was #{@secret_num}" if @finished_game == "won"
     return "You already lost. The number was #{@secret_num}" if @finished_game == "lost"

    if @guesses.include?(num) == false
        @remaining_guesses -= 1
        @guesses << num
    end

    if @remaining_guesses == 0 && num != @secret_num
      @finished_game = "lost"
      return "You lost! The number was #{@secret_num}"
    end

    #warning options
    if @remaining_guesses != 1
      warning = ""
    else
      warning = " WARNING: Only one guess left!"
    end

    #winning options

    if num < @secret_num
      return "Too low!#{warning}"
    elsif num > @secret_num
      return "Too high!#{warning}"
    elsif num == @secret_num && @remaining_guesses == @max_guesses -1
      @finished_game = "won"
      return "Yay, you won! The number was #{num}"
    elsif num == @secret_num
      @finished_game = "won"
      return "Correct! The number was #{num}"
    else
      return "That's not a number fool!"
    end
  end

  def has_won?
    @finished_game == "won"
  end

  def has_lost?
    @finished_game == "lost"
  end



end
