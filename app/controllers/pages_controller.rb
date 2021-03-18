class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def dashboard
    @t = Time.now
    @user = current_user
    @company = @user.company
    @trainings = @user.trainings
  end
end
