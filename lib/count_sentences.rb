

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
    split_array = self.split(/[.?!]/).reject {
        |sentence| sentence.empty?
    }

    #We split on any and all periods, question marks, and exclamation points using // 
    #Then, we rejected all empty strings by iterating over every element in the split array and removing any/all empty strings. 


    return split_array.length
  end

end