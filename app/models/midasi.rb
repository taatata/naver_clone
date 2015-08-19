class Midasi < ActiveRecord::Base
  belongs_to :matome
  validates :content, presence: true
  validates :matome_id, presence: true
end
