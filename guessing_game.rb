class GuessingGame
  attr_accessor :congrats_message

  def initialize(secret_num, max_guesses)
    @secret_num = secret_num
    @max_guesses = max_guesses
    @congrats_message = "Yay, you won!"
  end

end
