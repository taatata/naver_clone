class Block < ActiveRecord::Base
  has_one :midasi, dependent: :destroy
  # has_one ...
end
