class Questions
  attr_accessor :questions

  def initialize()
    @questions = { 
      35 => 'What is 28 plus 7?',
      22 => 'What is 11 plus 11?',
      33 => 'What is 44 minus 11?',
      17 => 'What is 10 plus 7?',
      2 => 'What is 8 divided by 4?',
      13 => 'What is 14 minus 1?' 
    }
  end

  def select_question
    random_key = questions.keys.sample
    questions.select { |k,v| k == random_key }
  end

end

# q = Questions.new
# q.select_question