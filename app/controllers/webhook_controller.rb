class WebhookController < ApplicationController
  protect_from_forgery with: :null_session

  def webhook
    token = params["To"]&.split("@")&.first&.split("+")&.second
    user = User.find_by(email_token: token)
    message = params["stripped-text"].split("--")[0]
    user.gratitudes.create!(body: message)
  end
end
