class Game
  attr_accessor :guesses
  def initialize(word)
    @target_word = word.split("")
    @guesses = []
    @incorrect_guesses = []
    @current_word = "_"
  end

  def display
    @current_word = ""
    @incorrect_guesses = ""
    @target_word.each do |letter|
      @guesses.include?(letter) ? @current_word += "#{letter} " : @current_word += "_ "
    end

    puts @current_word

    @guesses.each do |letter|
      @target_word.include?(letter) ? "" : @incorrect_guesses << letter
    end

    puts @incorrect_guesses
  end

  def play
    while @current_word.include?("_")
      print "Guess a letter: "
      @guesses << gets.chomp
      display
    end

    puts "You won!"
  end

end

game = Game.new("amazing")
game.play
#game.guesses << "a"
#game.display
