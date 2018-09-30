class AccountsController < ApplicationController
  def show
    @account = Account.find_by(name: params[:twitter])
    @gratitudes = @account.gratitudes
    @email_gratitudes = @user.email_gratitudes if @account.user
  end

  def submit_page
    @account = Account.find_by(name: params[:twitter])
    @gratitude = Gratitude.new
  end

  def submit
    @account = Account.find(gratitude_params[:account_id])

    if @account.gratitudes.create!(body: gratitude_params[:body])
      flash[:success] = "Gratitude submitted! Thanks!"
      redirect_to "/#{@account.name}"
    end
  end

  def gratitude_params
    params.require(:gratitude).permit(:body, :account_id)
  end
end
