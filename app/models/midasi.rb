class Midasi < ActiveRecord::Base
  belongs_to :block
  validates :content, presence: true
  validates :block_id, presence: true
end
