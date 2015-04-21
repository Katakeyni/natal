class User < ActiveRecord::Base
	has_many :pictures
	has_many :won_cases
	has_many :cases, through: :won_cases
end
