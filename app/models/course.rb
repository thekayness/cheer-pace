class Course < ApplicationRecord
	belongs_to :user
	has_many :tasks
	has_many :cheers

	after_create :build_empty_task

	accepts_nested_attributes_for :tasks
	accepts_nested_attributes_for :cheers, limit: 1

	def build_empty_task
		self.tasks.create(title: "Task title goes here", description: "Task description goes here", goal_date: Date.today.next_month)
	end

	def self.order_by_inactivity
		self.all.sort_by { |c| c.oldest_task }
	end

	def oldest_task
		self.tasks.order(created_at: :asc).first
	end


end
