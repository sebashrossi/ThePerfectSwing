class Training < ApplicationRecord
  belongs_to :company
  has_many :sections
  has_many :users, through: :training_user

  def progress_of(user)
    count = self.sections.count do |section|
      section_user = user.section_users.find_by(section: section)
      section_user.completed?
    end
    (count / self.sections.count) * 100
  end
end
