class GuessingGame
  attr_accessor :congrats_message

  def initialize(secret_number, allowed_guesses)
    @secret_number = secret_number
    @allowed_guesses = allowed_guesses
    @guesses_count = 0
    @congrats_message = "Yay, you won!"
  end




end
