class Block < ActiveRecord::Base
  has_one :midasi, dependent: :destroy
  has_one :text, dependent: :destroy
  has_one :mimage, dependent: :destroy
  has_one :quote, dependent: :destroy
  has_one :movie, dependent: :destroy

  accepts_nested_attributes_for :midasi
  accepts_nested_attributes_for :text
  accepts_nested_attributes_for :mimage
  accepts_nested_attributes_for :quote
  accepts_nested_attributes_for :movie
end
