class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    user_path(current_user) #your path
  end
end
