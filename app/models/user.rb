class User < ApplicationRecord
  serialize :interests, Array
  has_many :direct_messages
end
