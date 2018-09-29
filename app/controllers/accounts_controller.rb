class AccountsController < ApplicationController
  def show
    @account = Account.find_by(name: params[:twitter])
    @gratitudes = @account.gratitudes
  end
end
