require 'bcrypt'
class User < ApplicationRecord
  serialize :interests, Array
  has_many :direct_messages
  validates :username, presence: true
  validates :password, length: {minimum: 8}
  has_secure_password
end
