class Book
  
  attr_reader :title

  def title=(some_title)

    dont_capitalize = %w[the a an and in of]
    
    words = some_title.downcase.split(" ")
    title_case = []
    i = 0

    while i < words.length 
      if i == 0 
        title_case << words[i].capitalize
      elsif !dont_capitalize.include?(words[i])
        title_case << words[i].capitalize
      else
        title_case << words[i]
      end
      i+=1
    end
    @title = title_case.join(" ")
  end
end