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
  end

  def guess(num)
    @guess = num
    if @guesses.include?(num) == false
        @remaining_guesses -= 1
        @guesses << num
    end
    return "Too low!" if num < @secret_num
  end

  def has_won?
    @guess == @secret_num ? true : false
  end

  def has_lost?
    @remaining_guesses == 0 ? true : false
  end



end
