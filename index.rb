class Game
  attr_accessor :guess
  def initialize(word)
    @target_word = word.split("")
    @guess = []
  end

  def display
    current_word = ""
    @target_word.each do |letter|
      @guess.include?(letter) ? current_word += "#{letter} " : current_word += "_ "
    end

    puts current_word
  end
end

game = Game.new("amazing")
game.guess << "a"
game.display
