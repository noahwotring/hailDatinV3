class User < ApplicationRecord
  serialize :interests, Array
end
