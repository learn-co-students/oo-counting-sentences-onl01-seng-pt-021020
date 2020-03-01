require 'pry'

class String

  def sentence?
  #"returns true if the string that you are calling this method on ends in a period."
    self.end_with?(".") 
  end

  def question?
#This method should return true if a string ends with a question mark and false if it does not.
self.end_with?("?") 
  end

  def exclamation?
self.end_with?("!") 
  end

  def count_sentences
new_array = self.split(/[.?!]/).reject {|string| string.empty?}
    return new_array.length
  end
end