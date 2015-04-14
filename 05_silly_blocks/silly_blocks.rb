def reverser
 strings = yield
 output = []

 strings.split.map do |string|
  output << string.reverse
 end
 output.join(" ")
end

def adder(num = 1)
 yield + num
end

def repeater(num = 1)
 num.times do 
  yield
 end
end