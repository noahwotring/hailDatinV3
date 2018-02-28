require 'bcrypt'
class User < ApplicationRecord
  has_one :profile
  after_create :create_user_profile

  serialize :interests, Array
  has_many :direct_messages
  validates :username, presence: true
  validates :password, length: {minimum: 8}
  has_secure_password



  def create_user_profile
    Profile.create(user_id: self.id)
  end
end
