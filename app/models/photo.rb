class Photo < ApplicationRecord
	validates :image, presence:true
	validates :content, presence:true
	belongs_to :user
	has_many :photo_tags
	has_many :tags, through: :photo_tags

	mount_uploader :image, ImagenUploader
end
