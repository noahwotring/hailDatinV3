require 'bcrypt'
class User < ApplicationRecord
  serialize :interests, Array
  validates :username, presence: true
  validates :password, length: {minimum: 8}
  has_secure_password
<<<<<<< HEAD
<<<<<<< HEAD



  def create_user_profile
    Profile.create(user_id: self.id)
  end
=======
  has_many :conversations, :foreign_key => :sender_id
>>>>>>> kyle_branch
=======
>>>>>>> parent of 288947a... create_profile_with_user
end
