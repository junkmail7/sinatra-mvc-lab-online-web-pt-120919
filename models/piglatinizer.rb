class PigLatinizer
  attr_reader :text
  def initialize(text)
    @text = text
  end

  def first_consonants
    consonant_array = []
    @text.split(//).each { |letter|
      if letter == "a"|| letter =="e" || letter == "i" || letter == "o" || letter == "u"
        break
      end
      consonant_array.push(letter)
    }
    return consonant_array
  end

  def pl
    if @text[0] == "a" || @text[0] == "e" || @text[0] == "i" || @text[0] == "o" || @text[0] == "u"
      return @text.concat("way")
    elsif @text[1] == "a" || @text[1] == "e" || @text[1] == "i" || @text[1] == "o" || @text[1] == "u"
      newtext = @text.concat(@text[0])
      newtext[0] = ""
      newtext = newtext + "ay"
      return newtext
    else
      newtext = @text.concat(first_consonants.join)
      newtext = newtext + "ay"
      newtext.split(//)
      consonant_length = first_consonants.length
      x=0
      while x != consonant_length-1
        newtext[x] = ""
        x += 1
      end
      newtext[0]=""
      return newtext
    end
  end

end
