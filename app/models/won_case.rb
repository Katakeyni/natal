class WonCase < ActiveRecord::Base
	belongs_to :user
	belongs_to :case
end
