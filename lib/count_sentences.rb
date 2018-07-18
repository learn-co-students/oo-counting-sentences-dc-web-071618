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
    split = self.split(/[.?!]/)
    split_after_delete = split.delete_if do |word|
      word.size == 0
    end
    split_after_delete.length
  end
end
