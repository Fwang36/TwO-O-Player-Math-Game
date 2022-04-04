class Question

  def initialize()
    @num = rand(1..20)
    @num2 = rand(1..20)
  end 
  
  def question

    puts "What does #{@num} plus #{@num2} equal?"
    print "> "
  end

  def answer
    
    @num + @num2
  end
end


# q1 = Question.new
# puts q1.question
# puts q1.answer