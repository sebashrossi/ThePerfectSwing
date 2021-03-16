class Question < ApplicationRecord
  belongs_to :section

  def shuffle_answers
    self.possible_answers.push(self.answer).shuffle
  end

end
