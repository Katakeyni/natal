class Picture < ActiveRecord::Base
  belongs_to :user
  has_attached_file :file, styles: {large:'600x600>', medium: '300x300>', thumb: '200x200>', thumbsquare: '200x200#', xsmall: '60x60#', thumbBig: "300x300#" }
  validates_attachment :file, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
  has_many :imagetags	
  has_many :case_picture_link	
  has_many :cases, through: :case_picture_link
  has_many :tags, through: :imagetags
end
