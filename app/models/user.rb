class User < ApplicationRecord
  serialize :interest, Array
end
