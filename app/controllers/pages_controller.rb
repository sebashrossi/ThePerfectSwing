class PagesController < ApplicationController

  def home
  end

  def dashboard
    @user = current_user
    @company = @user.company
    @trainings = @user.trainings
  end
end
