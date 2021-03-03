class User < ApplicationRecord
  has_many :orders, dependent: :destroy

  validates :name, presence: true
  validates :name, length: { in: 2..50 }
  validates :email, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
