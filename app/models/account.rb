class Account < ApplicationRecord
  has_many :gratitudes

  def user
    User.find_by(name: name)
  end
end
