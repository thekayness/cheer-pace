class Task < ApplicationRecord
	belongs_to :course
	scope :overdue, lambda { where('goal_date < ? AND status = ?', Date.today, "incomplete") }
end
