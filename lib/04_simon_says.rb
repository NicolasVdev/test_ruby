def echo(str)
    return str
end

def shout(str)
return str.upcase
end

def repeat(str, i=2)
    return "#{str} " * (i - 1) + "#{str}"
end

def start_of_word(str, i)
    return str[0,i]
end

def first_word(str)
return str.split.first
end

def titleize(str)
    nocaps = ["and", "the"]
    str.split(" ").map.with_index {|word, i| nocaps.include?(word) && i>=1 ? word : word.capitalize }.join(" ")
end