require 'pry'

class String

  def sentence?
    if self.end_with?('.')
      return true
    else
      return false
    end
  end

  def question?
    if self.end_with?('?')
      return true
    else
      return false
    end
  end

  def exclamation?
    if self.end_with?('!')
      return true
    else
      return false
    end
  end

  def count_sentences
    #need to convert str to array, do that by creating creating variable as placeholder
    new_array = self.split(/[.?!]+/).length
    return new_array
  end
  
end
