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
    split_just_sentences = self.split(/[.?!]/).delete_if do |word|
      word.length == 0
    end
    split_just_sentences.length
  end
end
