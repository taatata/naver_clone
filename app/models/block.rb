class Block < ActiveRecord::Base
  has_one :midasi, dependent: :destroy
  has_one :text, dependent: :destroy

  accepts_nested_attributes_for :midasi
  accepts_nested_attributes_for :text
end
