class User < ApplicationRecord
  has_many :Orders

  has_secure_password
  validates :email, presence: true, uniqueness: true

end
