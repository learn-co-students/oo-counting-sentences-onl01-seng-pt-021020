require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    count = 0
    first_split = self.split('.')
    for first_phrase in first_split do
      second_split = first_phrase.split('?')
      for second_phrase in second_split do
        third_split = second_phrase.split('!')
        for phrase in third_split do
          if phrase.length > 0
            count += 1
          end
        end
      end
    end
    count
  end
end