class GuessingGame
  attr_accessor :congrats_message
  attr_reader :remaining_guesses, :has_won?

  def initialize(secret_number, allowed_guesses)
    @secret_number = secret_number
    @remaining_guesses = allowed_guesses
    @congrats_message = "Yay, you won!"

  end

  def has_lost?
    @remaining_guesses == 0
  end

  def has_won?
    @current_guess == secret_number
  end

  def guess(number)
    @current_guess = number
    @remaining_guesses -= 1
    if number == @secret_number
      puts @congrats_message
    elsif number < @secret_number
      puts "Too low!"
    else
      puts "Too high!"
    end

  end


end
