class Post < ActiveRecord::Base
  acts_as_taggable
  belongs_to :bulletin
  mount_uploader :picture, PictureUploader
  has_many :comments, dependent: :destroy
end
