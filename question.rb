class Question
  def initialize
    @num_1 = rand(1...20)
    @num_2 = rand(1...20)
    @sum = @num_1 + @num_2
  end

  def generate_question
    puts "What does #{@num_1} plus #{@num_2} equal To?"
  end



  def result?(input)
    @sum == input.to_i
  end
end