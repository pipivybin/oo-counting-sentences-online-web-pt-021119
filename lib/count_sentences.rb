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
    arr = self.split(/[.?!]/)
    arr.delete_if {|x| x.empty?}
    arr.length
  end
end
