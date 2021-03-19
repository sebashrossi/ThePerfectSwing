class PagesController < ApplicationController

  def home
  end

  def dashboard
    @t = Time.now
    @user = current_user
    @company = @user.company
    @trainings = @user.trainings.limit(4)
    @alltrainings = @user.trainings
  end
end
