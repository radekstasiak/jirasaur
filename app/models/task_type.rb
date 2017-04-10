class TaskType < ActiveRecord::Base
	has_many :tasks
	validates :name, presence: true, allow_nil: false, allow_blank:false
end
