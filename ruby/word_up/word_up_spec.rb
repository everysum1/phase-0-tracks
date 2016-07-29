require_relative 'wordup'

describe WordUp do 
    before(:each) do 
      @game = WordUp.new('discuss')
    end

  describe 'initialize' do 

    it "assigns a secret word" do 
      # expect secret word to equal that string
      expect(@game.secret_word).to eq 'discuss'
    end

    it "sets the length variable" do 
      expect(@game.secret_word.length).to eq 7
    end

    it "initializes a board instance" do 
      expect(@game.board).to be_a Array
      expect(@game.board.length).to eq 7
      expect(@game.board.all? { "_" }).to eq true
    end

    it "sets the chances_left variable" do 
      expect(@game.chances_left).to eq 10
    end

    it "initializes the past_guesses array" do 
      expect(@game.past_guesses).to eq []
    end
  end

  describe 'display update' do 
   
    it "#board shows guesser the current board" do 
      # expect @game method to output this array to the screen
      expect(@game.board).to eq ["_", "_" ,"_" ,"_" ,"_" ,"_" ,"_"]
    end 

    it "#chances_left shows guesser their remaining chances" do 
      # expect the @game to output this guess count to the screen
      expect(@game.chances_left).to eq 10
    end
  end

  describe "#check_guess" do 

    it "checks a letter on the current board for matches" do 
      expect(@game.check_guess("s")).to eq [2,5,6]
      expect(@game.check_guess("e")).to eq []
      expect(@game.check_guess("d")).to eq [0]
    end   

     it "correctly decrements chances_left after a guess is checked" do
      expect(@game.chances_left).to eq 10
      @game.check_guess("d")
      expect(@game.chances_left).to eq 9
    end
  
    it "doesn't count a repeated letter guess against the player" do 
      expect(@game.chances_left).to eq 10
      @game.check_guess("g")
      expect(@game.chances_left).to eq 9
      @game.check_guess("g")
      expect(@game.chances_left).to eq 9
    end

    it "adds new guess to list of past guesses" do 
      expect(@game.past_guesses).to eq []
      @game.check_guess("d")
      expect(@game.past_guesses).to eq ["d"]
    end 

    it "does not add a repeated guess to list of past guesses" do 
      expect(@game.past_guesses).to eq []
      @game.check_guess("d")
      expect(@game.past_guesses.size).to eq 1
      @game.check_guess("d")
      expect(@game.past_guesses.size).to eq 1
    end
  end

  describe "#update_board" do 

    it "correctly updates a board with no matches" do 
      expect(@game.update_board([], "b")).to eq ["_", "_" ,"_" ,"_" ,"_" ,"_" ,"_"]
    end

    it "correctly updates a board with 1 match" do 
      expect(@game.update_board([3],'c')).to eq ["_", "_" ,"_" ,"c" ,"_" ,"_" ,"_"]
    end 

    it "correctly updates a board with more than one match" do
      expect(@game.update_board([2,5,6],'s')).to eq ["_", "_" ,"s" ,"_" ,"_" ,"s" ,"s"]
    end
  end

  describe "#won?" do 

    it "knows when a player has won" do 
      @game.board = ['p','a','s','s','w','_','r', 'd']
      @game.update_board([5],"o")
      expect(@game.board.all? { |chr| chr =~ /[a-z]/ }).to eq true
      expect(@game.won?).to eq true
    end  
  end

  describe "#lost?" do 

    it "knows when a player has lost" do 
      @game.board = ["r", "o", "s","_", "_", "_", "_"]
      @game.chances_left = 1
      @game.check_guess("e")
      @game.update_board([3],"e")
      expect(@game.board.include?("_")).to eq true
      expect(@game.chances_left).to eq 0
      expect(@game.won?).to eq false
      expect(@game.lost?).to eq true
    end
  end  
end