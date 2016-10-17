class Task < ApplicationRecord
	belongs_to :course
	scope :overdue, lambda { where('goal_date >= ?', Date.today) }
end
