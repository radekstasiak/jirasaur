class UserTask < ActiveRecord::Base
	belongs_to :user 
	belongs_to :task

	validates :task_id, presence: true, allow_nil: false, allow_blank:false
	validates :user_id, presence: true, allow_nil: false, allow_blank:false
end
