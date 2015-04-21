class CasePictureLink < ActiveRecord::Base
  belongs_to :case
  belongs_to :picture

  accepts_nested_attributes_for :picture

end
