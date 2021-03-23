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

  def hours_completed_by(user)
    time_spent = 0
    user.trainings.each do |training|
      time_spent += training.time_spent_on_training_by(user)
    end
    time_spent
  end

  def trainings_completed_by(user)
    completed = 0
    user.trainings.each do |training|
      completed += 1 if training.progress_of(user) == 100
    end
    completed
  end

  def overall_progress_of
    hours_done = 0
    total_length = 0
    trainings.each do |training|
      total_length += training.training_length
      hours_done += (training.progress_of(self) / 100) * training.training_length
    end
    return (hours_done.to_f / total_length.to_f) * 100
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.available_trainees(training)
    User.all.reject{ |user| user.trainings.include?(training) }
    # self.where.not(training: training)
  end
  def self.options_for_select
    User.all.map{ |user| [user.email, user.id] }
  end
end
