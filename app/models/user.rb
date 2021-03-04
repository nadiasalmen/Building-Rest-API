class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :registerable,
         :recoverable, :rememberable, :validatable

  acts_as_token_authenticatable

  has_many :orders, dependent: :destroy

  validates :name, presence: true
  validates :name, length: { in: 2..50 }
  validates :email, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
