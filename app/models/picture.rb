class Picture < ActiveRecord::Base
  belongs_to :user
  has_attached_file :file
  validates_attachment :file, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
  has_many :imagetags	
  has_many :case_picture_link	
  has_many :cases, through: :case_picture_link
  has_many :tags, through: :imagetags
end
