class BoggleBoard
  def initialize
    #how do we describe it
    #creating an array of 16 underscores
    @space = Array.new(16,"_")
    @alphabet = ('A'..'Z').to_a
  end

  def shake!
    @space.map! do | space |
      space = @alphabet.shuffle.take(1)
    end

  end

    #take spaces
    #replace item with random letters(prob good idea to create a var for this)
    #split it into our board
    #call the shake! method without BoggleBoard class
    #could use MAP
    # output_string = String.new
    # second_array = @alphabet
    # 4.times do
    # output_string << second_array.sort_by { rand }.shift(4).join(' ') + ("\n")
    #
    # end
    # output_string
    #
    # end

  #Defining to_s on an object controls how the object is
  #represented as a string, e.g., when you pass it to puts
  def to_s
    #a new string for the output
    output_string = String.new
    letter_array = @space
    4.times do
      output_string << letter_array.shift(4).join(' ') + ("\n")

    #making a variable to mess with so i don't screw up my instance variable

    #a new string for alphabet
    # letters = @alphabet

    # output_string << letter_array.shift(4).join(' ') + ("\n")
    # 4.times do

  end
   output_string
end
end

board = BoggleBoard.new
puts board.to_s

board = BoggleBoard.new
puts board.shake!
