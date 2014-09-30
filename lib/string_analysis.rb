# require 'pry'

class String

  def word_count
    self
  end

  def normalize
    self.chomp.downcase.split(/\b[^\w\']+\b/)
  end

  def unique
    self.normalize.uniq.sort
  end

  def count(uniq = false)
    uniq ? self.unique.length : self.normalize.length
  end

  def hash
    counts = Hash.new 0
    self.normalize.each_with_object(Hash.new(0)) { |word, counts| counts[word] += 1 }
  end

  def common(threshold=3)

  end

end


# This will give you the contents of the `sample.txt` file as one big string
sample_text = "my new string"
# print "#{sample_text.normalize} \n"
# print "#{sample_text.unique} \n"
# puts sample_text.count
# puts sample_text.count(true)
