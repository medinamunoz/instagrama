class Photo < ApplicationRecord
	belongs_to :user
	has_many :photo_tags
	has_many :tags, through: :photo_tags

	accepts_nested_attributes_for :tags,
		reject_if: proc { |attributes| attributes['name'].blank? },
		allow_destroy: true

	
	validates :content, presence:true
	

	mount_uploader :image, ImagenUploader

	def to_s
		content
	end

end
