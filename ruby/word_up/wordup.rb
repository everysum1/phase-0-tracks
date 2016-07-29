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

p "Welcome to Word UP!"
p "Are you ready to play? [y/n]?"
answer = gets.chomp.downcase
until answer.downcase == 'n'
  # ask player 1 for a word to guess
  p "Please enter a word for your opponent to guess...but make it good!!"
  secret_word = gets.chomp.downcase
  system "clear"
  # initialize new game instance with player 1's word
  game = WordUp.new(secret_word)
  # while player 2 still has guesses
  until game.won? || game.lost?
    # display update
    game.display_update
    # ask for a letter guess
    print "Guess a letter: "
    letter = gets.chomp.downcase
    # check guess 
    # update board
    game.update_board(game.check_guess(letter), letter)
    # if they won
    if game.won?
      # congratulate them 
      p game.board
      p "Congratulations, you won!"
      # ask them if they want to play again
      p "Would you like to play again? [y/n]?"
      answer = gets.chomp.downcase
    # check if they lost
    elsif game.lost?
      # if they did, mock them mercilessly 
      p "Sorry, you lost! Bwa ha ha ha ha :-p"
      # ask if they want to play again
      p "Would you like to play again? [y/n]?"
      answer = gets.chomp.downcase
    end 
  end 
end

p "Thanks for playing!" 

# One user can enter a word (or phrase, if you would like your game 
# to support that), and another user attempts to guess the word.

## gets a word from user
## presents board and count
## keeps guess count
## gets a guess from user
## checks board and displays updated board
## if the user runs out of guesses, tell them they lost
## if the user wins, tell them they won 

