class Block < ActiveRecord::Base
  has_one :midasi, dependent: :destroy
  # has_one ...

  accepts_nested_attributes_for :midasi
end
