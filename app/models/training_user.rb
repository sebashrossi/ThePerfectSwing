class TrainingUser < ApplicationRecord
  belongs_to :user
  belongs_to :training
  after_create :create_section_users

  def create_section_users
    self.training.sections.each do |section|
      SectionUser.create(user: self.user, section: section, quiz_score: 0)
    end
  end
end
