class Matome < ActiveRecord::Base
  belongs_to :user
  has_many :blocks
  default_scope -> { order('created_at DESC') }
  validates :content, presence: true
  validates :user_id, presence: true
  validates :title,   presence: true, length: { maximum: 50 }
end
