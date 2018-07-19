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
    # count = 0
    # binding.pry
    self.split(/[.!?]/).delete_if { |sentence| sentence.size < 2}.size
    # binding.pry
    # self.split(/[.!?]/).delete_if {|w| w.size < 2}.size
  end
end
