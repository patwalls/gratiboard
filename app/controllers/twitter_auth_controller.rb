class TwitterAuthController < ApplicationController
  def create
    if Account.find_by(name: auth_hash.info.nickname)
      account = Account.find_by(name: auth_hash.info.nickname)
    else
      account = Account.create!(name: auth_hash.info.nickname)
    end

    current_user.update(
      provider: auth_hash.provider,
      uid: auth_hash.uid,
      name: auth_hash.info.nickname,
      profile_image: auth_hash.info.image,
      token: auth_hash.credentials.token,
      secret: auth_hash.credentials.secret
    )

    redirect_to user_path(current_user)
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
