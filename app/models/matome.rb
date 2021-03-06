class Matome < ActiveRecord::Base
  belongs_to :user

  has_many :blocks

  mount_uploader :image, ImageUploader

  accepts_nested_attributes_for :blocks

  default_scope -> { order('created_at DESC') }
  #validates :content, presence: true
  #validates :title,   presence: true, length: { maximum: 50 }
  validates :user_id, presence: true
end
