def text_filter(str)
	banned_words = %w(red green blue yellow)
	
	str.split.map do |word|
  	banned_words.include?(word) ? word.gsub(/[aeiou]/i,"-") : word
  end.join(" ")

end