class Company < ApplicationRecord
  belongs_to :user, optional: true
  has_many :trainings
  has_many :users, dependent: :nullify
end
