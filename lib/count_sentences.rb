require 'pry'

class String

  def is_punctuation?
  	punctuation = [".", "?", "!"]

  	punctuation.include?(self)
  end

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
  	characters = self.chars << "a"

  	sentence_count = 0

  	characters[0..-2].each_with_index do |char, idx|
  		#moves on to the next char if it isn't punctuation
  		if char.is_punctuation? && !characters[idx + 1].is_punctuation?
  			# binding.pry 
  			sentence_count += 1
		end
  	end

  sentence_count
  end
end

#The way i see sentences I say  - ok, the first appearance of a (., ?, !) denotes the ending
#if there is another punctuation mark afterwards, I recognize it as emphatic but not functional
