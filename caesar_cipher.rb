def caesar_cipher(word,increment)
	base = 36
	letters_array = word.chars.map do |char|
		character = char;
		is_upcase = character == character.upcase
		# 0 are special characters like spaces ?!.,
		if(char.to_i(base) != 0)
			#convert character in word to base36 number
			number = char.to_i(base);
			#increments the number, if it reaches end it starts from 10 which represents A in base36
			increment.times { |t| number + 1 >= base ? number = 10 : number+=1 }
			#convert back to character
			character = number.to_s(base)
		end
		is_upcase ? character.upcase : character
	end
	encrypted = letters_array.join
	p encrypted
	return encrypted
end

caesar_cipher("What A string!",5 )
