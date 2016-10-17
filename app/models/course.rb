class Course < ApplicationRecord
	belongs_to :user
	has_many :tasks
	has_many :cheers

	def self.order_by_inactivity
		Task.order(created_at: :asc).limit(1)
	end

	def last_task_updated
		self.tasks.order(created_at: :asc).first
	end


end
