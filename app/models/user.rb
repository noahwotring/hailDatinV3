class User < ApplicationRecord
  serialize :interests, Array
  has_many_direct_messages
end
