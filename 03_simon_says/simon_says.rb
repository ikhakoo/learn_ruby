def echo(x)
	x
end

def shout(x)
	x.upcase
end

def repeat(string, num=2)
  num.times.collect { string + "" }.join(" ").rstrip
end

def start_of_word(string, num)
	string[0...num]
end

def first_word(string)
	string.split[0].to_s
end

def titleize(str)
    str.capitalize!  
    words_no_cap = ["and", "or", "the", "over", "to", "the", "a", "but"]
    phrase = str.split(" ").map {|word| 
        if words_no_cap.include?(word) 
            word
        else
            word.capitalize
        end
    }.join(" ") 
  phrase 
end

