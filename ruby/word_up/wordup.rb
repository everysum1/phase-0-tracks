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

  def display_update
    p @board
    suffix = @chances_left > 1 ? "es" : ""
    p "You have #{@chances_left} guess#{suffix} left"
  end

  def check_guess(letter)
    correct_indexes = []
    i = 0
    while i < @secret_word.length
      correct_indexes << i if letter == secret_word[i]
      i += 1
    end
    @chances_left -= 1 unless @past_guesses.include?(letter)
    @past_guesses << letter unless @past_guesses.include?(letter)
    correct_indexes
  end

  def update_board(correct_indexes, letter)
    correct_indexes.each do |idx| 
      @board[idx] = letter
    end
    @board
  end

  def won?
    @chances_left >= 0 && @board.all? { |chr| chr =~ /[a-z]/ }
  end

  def lost?
    !won? && @chances_left == 0
  end
end



# One user can enter a word (or phrase, if you would like your game 
# to support that), and another user attempts to guess the word.

## gets a word from user
## presents board and count
## keeps guess count
## gets a guess from user
## checks board and displays updated board
## if the user runs out of guesses, tell them they lost
## if the user wins, tell them they won 

