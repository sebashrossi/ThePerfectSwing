class PagesController < ApplicationController

  def home
  end

  def dashboard
    @t = Time.now
    @company = current_user.company
    @trainings = current_user.trainings.limit(4)
    @alltrainings = current_user.trainings
  end

  def peers
     @t = Time.now
     @company = current_user.company
     @peers = User.all.where.not(id: current_user.id)
  end
end
