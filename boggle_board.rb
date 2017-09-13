class BoggleBoard
  def initialize
    #how do we describe it
    #creating an array of 16 underscores
    @space = Array.new(16,"_")
    @alphabet = ('A'..'Z').to_a

    @alphabet = replace_q_with_qu(@alphabet)

    # @DICE = ["AAEEGN","ELRTTY","AOOTTW","ABBJOO",
    #         "EHRTVW","CIMOTU","DISTTY","EIOSST",
    #         "DELRVY","ACHOPS","HIMNQU","EEINSU",
    #         "EEGHNW","AFFKPS","HLNNRZ","DEILRX"]


  end

  def replace_q_with_qu(alphabet_arr)
    result_arr = []
    # alphabet_arr = ["a", "Q", "d"]
    alphabet_arr.each do |element|
      if element == "Q"
        result_arr << "Qu"
      else
        result_arr << element
      end
    end
    result_arr
  end

  def shake!
    @space.map! do | space |
      space = @alphabet.shuffle.take(1)
      # space = @DICE.shuffle.take(1)
    end
    # puts @space



    # # take spaces
    # # replace item with random letters(prob good idea to create a var for this)
    # # split it into our board
    # # call the shake! method without BoggleBoard class
    # # could use MAP
    # output_string = String.new
    # second_array = @alphabet
    #
    # 4.times do
    # output_string << second_array.sort_by { rand }.shift(4).join(' ') + ("\n")
    #
    # end
    # output_string

  end

  #Defining to_s on an object controls how the object is
  #represented as a string, e.g., when you pass it to puts
  def to_s

    #a new string for the output
    output_string = ""
    output_string = @space[0..3].join.split(' ') + ("\n")
    output_string = @space[4..7].join.split (' ') + ("\n")
    output_string = @space[8..11].join.split (' ') + ("\n")
    output_string = @space[12..15].join.split(' ') + ("\n")

    output_string

    # 4.times do
    #   output_string << letter_array.shift(4).join(' ') + ("\n")

    #making a variable to mess with so i don't screw up my instance variable

    #a new string for alphabet
    # letters = @alphabet

    # output_string << letter_array.shift(4).join(' ') + ("\n")
    # 4.times do
  end
end

board = BoggleBoard.new
# print board
puts board.shake!
# puts board
