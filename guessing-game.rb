
class GuessingGame
  attr_accessor :congrats_message
  def initialize(secret_number,allowed_guesses)
    @secret_number = secret_number
    @allowed_guesses = allowed_guesses
    @congrats_message = ''
  end

  # def congrats_message=(new_message)
  #   @congrats_message = "new_message"
  #   @congrats_message
  # end
end
