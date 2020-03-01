require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    # before.reject works on the first and the third test. 
    count_sentences = self.split(/[.?!]/).reject{|string| string.empty?}
    return count_sentences.count

      # tried to use the if stat, but I could not pass the third
      # test
  #   count_sentences = self.split(/[.?!]/)
  #   count_sentences = self.reject{|string| string.empty?}

  end
end
