require 'pry'

class String

  def sentence?
    self.chars.last.include? '.'
  end

  def question?
    self.end_with? '?'
  end

  def exclamation?
    self.end_with? '!'
  end

  def count_sentences
    arr = self.split(Regexp.union(['. ', '! ', '? '])) - ['']
    arr.count
  end
end

binding.pry