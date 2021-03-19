class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  add_flash_types :info
  def after_sign_in_path_for(resource_or_scope)
    dashboard_path
  end

  def after_sign_out_path_for(resource_or_scope)
     new_user_session_path
  end
end
