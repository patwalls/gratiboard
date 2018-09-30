class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  before_create :generate_email_token

  has_many :email_gratitudes
  has_many :accounts, :foreign_key => 'name', :primary_key => 'name'
  has_many :gratitudes, through: :accounts

  def generate_email_token
    self.email_token = SecureRandom.base58(24)
  end
end
