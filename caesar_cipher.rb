def caesar_cipher(word,increment)
	base = 36
	letters_array = word.chars.map do |char|
		character = char;
		is_upcase = character == character.upcase
		if(char.to_i(base) != 0)
			number = char.to_i(base);
			increment.times { |t| number + 1 >= base ? number = 10 : number+=1 }
			character = number.to_s(base)
		end
		is_upcase ? character.upcase : character
	end
	encrypted = letters_array.join
	p encrypted
	return encrypted
end

caesar_cipher("What A string!",5 )