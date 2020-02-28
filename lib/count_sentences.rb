require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    new_str = self.split(/[.!?]/)
    new_str.delete_if do |word| word.length == 0 end
    new_str.count
  end
end
