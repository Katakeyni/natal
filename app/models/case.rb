class Case < ActiveRecord::Base
  belongs_to :user
  has_many :case_picture_link	
  has_many :pictures, through: :case_picture_link
  has_many :won_cases
  has_many :users, through: :won_cases
  accepts_nested_attributes_for :pictures
  accepts_nested_attributes_for :case_picture_link

  validates :response, length: { maximum: 8,minimum:2 }, presence: true
end
