class Text < ActiveRecord::Base
  belongs_to :block
  validates :content, presence: true
end
