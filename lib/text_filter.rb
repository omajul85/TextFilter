def text_filter(str, banned_words = %w(red green yellow blue))
	
	banned_words.map!(&:downcase)

  str.split.map do |word|
  	if hasSpecialCharacter?(word)
  		special_char = word.chars.last
  		word = word[0..-2]
  		banned_words.include?(word.downcase) ? word.gsub(/[aeiou]/i,"-") + special_char : word + special_char
  	else
  		banned_words.include?(word.downcase) ? word.gsub(/[aeiou]/i,"-") : word
  	end
  end.join(" ")

end

def hasSpecialCharacter?(word)
	word.match(/\W$/).nil? ? false : true
end