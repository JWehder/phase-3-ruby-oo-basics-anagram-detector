# Your code goes here!
class Anagram
    attr_accessor :word

    def initialize(word)
        @word = word
    end

    def match(array)
        # create an array of letters
        # create a loop to compare each word in the array with the word
        # create a conditional to end loop once match has been found
        # if no match has been found, then return an empty array
        @letters = @word.chars
        array.filter do | word |
            array_word_letters = word.chars
            if array_word_letters.sort == @letters.sort
                puts word
                true
            else 
                false
            end
        end
    end

end

listen = Anagram.new("listen")
matcher = listen.match(%w[enlists google inlets banana])

