class Section < ApplicationRecord
  belongs_to :training
  has_many :questions
  has_many :users, through: :section_user
end
