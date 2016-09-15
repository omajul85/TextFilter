def text_filter(str, banned_words = %w(red green yellow blue))
	
	banned_words.map!(&:downcase)

  str.split.map do |word|
  	banned_words.include?(word.downcase) ? word.gsub(/[aeiou]/i,"-") : word
  end.join(" ")

end