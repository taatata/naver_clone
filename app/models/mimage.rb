class Mimage < ActiveRecord::Base
  belongs_to :block

  mount_uploader :image, ImageUploader
end
