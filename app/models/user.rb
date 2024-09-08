class User < ApplicationRecord
  require "securerandom"

  has_secure_password

  validates :email, :password, :username, presence: true
  validates :username, uniqueness: true
end
