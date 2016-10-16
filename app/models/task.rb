class Task < ApplicationRecord
	belongs_to :my_class
	scope :overdue_tasks, -> lambda { where("deadline" < ?", Date.today) }
end
