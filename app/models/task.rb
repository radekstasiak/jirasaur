class Task < ActiveRecord::Base
	has_many :user_tasks
	has_many :users, :through =>:user_tasks	

	validates :name, presence: true, allow_nil: false, allow_blank:false
	validates :task_status_id, presence: true, allow_nil: false, allow_blank:false
	validates :task_type_id, presence: true, allow_nil: false, allow_blank:false
end
