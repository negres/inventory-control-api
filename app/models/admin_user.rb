class AdminUser < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true, format: { with: /\A\w+[^@\s]+@[^@\s]+\z/ }
end
