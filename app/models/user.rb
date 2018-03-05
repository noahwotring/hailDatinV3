require 'bcrypt'
class User < ApplicationRecord
  after_create :create_user_profile
  serialize :interests, Array
  validates :username, presence: true
  validates :password, length: {minimum: 8}
  has_secure_password

  has_many :conversations, :foreign_key => :sender_id

  def create_user_profile
    Profile.create(user_id: self.id)
  end
end
