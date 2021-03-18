class SectionUser < ApplicationRecord
  belongs_to :user
  belongs_to :section

  def completed?
    self.quiz_score >= 80
  end
end
