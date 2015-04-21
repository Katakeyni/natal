class Tag < ActiveRecord::Base
	has_many :imagetags
	has_many :pictures, through: :imagetags
end
