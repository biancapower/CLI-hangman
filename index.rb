class Game
  attr_accessor :guesses
  def initialize(word)
    @target_word = word.split("")
    @guesses = []
    @current_word = "_"
  end

  def display
    @current_word = ""
    @target_word.each do |letter|
      @guesses.include?(letter) ? @current_word += "#{letter} " : @current_word += "_ "
    end

    puts @current_word
    print guesses
    puts
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
