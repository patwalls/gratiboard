class Account < ApplicationRecord
  has_many :gratitudes
  belongs_to :user
end
