class Block < ActiveRecord::Base
  has_one :midasi, dependent: :destroy
  has_one :text, dependent: :destroy
  has_one :mimage, dependent: :destroy

  accepts_nested_attributes_for :midasi
  accepts_nested_attributes_for :text
  accepts_nested_attributes_for :mimage
end
