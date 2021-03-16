class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :company, optional: true
  has_many :training_users
  has_many :section_users
  has_many :trainings, through: :training_users
  has_many :sections, through: :section_users
end
