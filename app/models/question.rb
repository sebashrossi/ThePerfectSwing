class Question < ApplicationRecord
  belongs_to :section
  has_many :wrong_answers

  def shuffle_answers
    all_answers = wrong_answers.map { |answer| [answer.content, answer.content] }.push([answer, answer])
    return all_answers.shuffle
    # [[true, question.possible_answers[0]] ,[false, question.possible_answers[1]], [false, question.possible_answers[2]]]
  end
end
