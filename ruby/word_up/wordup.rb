class WordUp
  attr_accessor :secret_word, :chances_left, :board, 
                :current_guess, :past_guesses

  def initialize(secret_word)
    @secret_word = secret_word
    @length = secret_word.length 
    @board = Array.new(@length, "_")
    @chances_left = (@length * 1.5).floor
    @past_guesses = []
  end 

end