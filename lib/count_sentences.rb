require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sentence_array = self.split(/[.!?]/)
      sentence_array.each_with_index do |sentence, i|
        if sentence.length <= 2
          sentence_array.delete_at(i)
        end
      end
    sentence_array.length
  end
end