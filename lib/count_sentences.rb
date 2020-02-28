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
      new_sentence = self.split(/[.!?]/).reject {|value| value.empty?}
      binding.pry
      return new_sentence.size
      end
    end 
  