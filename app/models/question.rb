class Question < ApplicationRecord
  belongs_to :section

  def shuffle_answers
    all_answers = self.possible_answers.push(self.answer).shuffle
    return all_answers.map { |answer| [answer, answer] }
    # [[true, question.possible_answers[0]] ,[false, question.possible_answers[1]], [false, question.possible_answers[2]]]
  end
end
