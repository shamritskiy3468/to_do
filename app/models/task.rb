class Task < ApplicationRecord
	belongs_to :problem
	validates :task_name, presence: true
end
