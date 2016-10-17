class Course < ApplicationRecord
	belongs_to :user
	has_many :tasks
	has_many :cheers
end
