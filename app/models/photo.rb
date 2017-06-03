class Photo < ApplicationRecord
	validates :image, presence:true
	validates :content, presence:true
end
