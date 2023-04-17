def translate(str)
  vowels = ['a', 'e', 'i', 'o', 'u']
  consonants = ('a'..'z').to_a - vowels
  array = str.split
  array.map! do |word|
  if vowels.include?(word[0])
      word + "ay"
  elsif (consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])) || (consonants.include?(word[0]) && "qu".include?(word[1..2]))
      word[3..-1] + word[0..2] + "ay" 
  elsif (consonants.include?(word[0]) && consonants.include?(word[1])) || "qu".include?(word[0..1])
      word[2..-1] + word[0..1] + "ay" 
  else consonants.include?(word[0])
      word[1..-1] + word[0] + "ay"
  end
end
return array.join(" ")
end