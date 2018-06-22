class ScrambledDiary
  def initialize(contents)
    @contents = contents
  end

  # def read
  #   @contents
  # end

  def scramble(comparison)
    comparison.scramble(@contents)

  end

  def unscramble(comparison)
    comparison.unscramble(@contents)
  end

end

class AdvancedChars

  def initialize(steps)
    @steps = steps
  end


  def scramble(contents)
    plain_chars = contents.chars
    scrambled_chars = plain_chars.map do |char|
      (char.ord + @steps).chr
    end
    @contents = scrambled_chars.join
  end

   def unscramble(contents)
    scrambled_chars = contents.chars
    plain_chars = scrambled_chars.map do |char|
      (char.ord - @steps).chr
    end
    @contents = plain_chars.join
  end

end

class Reversing

  
  def scramble(contents)
    contents.reverse
  end

  def unscramble(contents)
    contents.reverse
  end

end





 

  

  

 
