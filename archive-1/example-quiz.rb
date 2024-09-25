class QuizQuestion
  attr_accessor :question, :options, :correct_option

  def initialize(question, options, correct_option)
    @question = question
    @options = options
    @correct_option = correct_option
  end
end

class TriviaQuiz
  def initialize
    @questions = []
  end

  def add_question(question)
    @questions << question
  end

  def ask_questions
    @questions.each_with_index do |q, index|
      puts "#{index + 1}. #{q.question}"
      q.options.each_with_index { |option, i| puts "   #{i + 1}. #{option}" }
      user_answer = gets.chomp.to_i

      if user_answer == q.correct_option
        puts "Correct!"
      else
        puts "Wrong! The correct answer was option #{q.correct_option}."
      end
    end
  end
end

quiz = TriviaQuiz.new
quiz.add_question(QuizQuestion.new('What is the capital of France?', ['Berlin', 'Madrid', 'Paris', 'Rome'], 3))
quiz.add_question(QuizQuestion.new('What is 2 + 2?', ['3', '4', '5', '6'], 2))
quiz.ask_questions
