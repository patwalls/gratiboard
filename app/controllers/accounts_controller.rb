class AccountsController < ApplicationController
  def show
    @user = User.find_by(name: params[:twitter])
    @gratitudes = @user.gratitudes
  end
end
