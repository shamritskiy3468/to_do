class Task < ApplicationRecord
	has_one :problem
	validates :task_name, presence: true
end
