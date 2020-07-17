class Game
  attr_accessor :guess
  def initialize(word)
    @target_word = word.split("")
    @guess = []
    @current_word = "_"
  end

  def display
    @current_word = ""
    @target_word.each do |letter|
      @guess.include?(letter) ? @current_word += "#{letter} " : @current_word += "_ "
    end

    puts @current_word
  end

  def play
    while @current_word.include?("_")
      print "Guess a letter: "
      @guess << gets.chomp
      display
    end
  end

end

game = Game.new("amazing")
game.play
#game.guess << "a"
#game.display
