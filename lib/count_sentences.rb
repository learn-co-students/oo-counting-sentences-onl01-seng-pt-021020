require 'pry'

class String

  def sentence?
    if
    self.end_with?"."
    true
    
  else 
    false
  end
  end

  def question?
  if
    self.end_with?"?"
    true
    
  else 
    false
  end
  end

  def exclamation?
  if
    self.end_with?"!"
    true
    
  else 
    false
  end
  end

  def count_sentences
    # split at punctuationand use reject which return a new array for the items in the original array on condition that the block evalute to false than call the length of new array 
    self.split(/[.!?]/).reject {|punctuation| punctuation.empty?}.size
    
    # self.reject! {|x| x.include? characters here  } this is another methode might wanna review
    
  end
end


