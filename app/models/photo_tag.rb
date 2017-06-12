class PhotoTag < ApplicationRecord
  belongs_to :photo
  belongs_to :tag

  
  def to_s
  	name
  end

end
