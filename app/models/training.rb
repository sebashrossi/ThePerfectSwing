class Training < ApplicationRecord
  belongs_to :company
  has_many :sections
  has_many :users, through: :training_user
end
