def hello
 "hello"
end

def greet(name)
	@name = name
	if name == "Bob"
		"Hello, Bob!"
	elsif name == "Alice" 
		"Hello, Alice!"
	end
end