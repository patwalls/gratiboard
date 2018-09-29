class Account < ApplicationRecord
  has_many :gratitudes
  validates_uniqueness_of :name
end
