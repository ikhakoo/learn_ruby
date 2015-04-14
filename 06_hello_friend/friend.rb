class Friend 

 def greet(someone = nil)
   if someone == nil
     "Hello !"
   else
     "Hello #{someone}!"
   end
 end
end