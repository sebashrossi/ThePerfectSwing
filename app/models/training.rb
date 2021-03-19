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

  def time_spent_on_training_by(user)
    counter = 0
    self.sections.each do |section|
      section_user = user.section_users.find_by(section: section)
      counter += section.length if section_user.completed?
    end
    counter
  end

  def training_length
    length = 0
    self.sections.each do |section|
      length += section.length
    end
    length
  end
end
