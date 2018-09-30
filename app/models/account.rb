class Account < ApplicationRecord
  has_many :gratitudes

  def user
    Account.find_by(name: name)
  end
end
