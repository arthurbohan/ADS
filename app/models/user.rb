class User < ApplicationRecord
  validates :email, presence: true, length: { maximum: 256 }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: { user: 0, admin: 1 }

  has_many :advertisements, dependent: :destroy
end
