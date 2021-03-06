class PagesController < ApplicationController
  def home
  end

  def dashboard
    @t = Time.now
    @users = User.all.where.not(id: current_user.id, admin: true)
    @company = current_user.company
    @trainings = []
    current_user.trainings.each do |training|
      @trainings << training if training.progress_of(current_user) != 100 && @trainings.count < 4
    end
    @alltrainings = current_user.trainings
    @timeline_items = TrainingUser.all.shuffle.last(10)
    if current_user.admin?
      render 'admin_dashboard'
    end
  end

  def peers
    @t = Time.now
    @company = current_user.company
    @peers = User.all.where.not(id: current_user.id, admin: true)
    @admin = User.all.where(admin: true)
  end
end
