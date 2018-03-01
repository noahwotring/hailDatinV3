require 'bcrypt'
class User < ApplicationRecord
  serialize :interests, Array
  validates :username, presence: true
  validates :password, length: {minimum: 8}
  has_secure_password
  has_many :conversations, :foreign_key => :sender_id
end
