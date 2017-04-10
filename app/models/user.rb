class User < ActiveRecord::Base
	has_many :user_tasks
	has_many :tasks, :through =>:user_tasks
	
	validates :team_id, presence: true, allow_nil: false, allow_blank:false
	validates :team_domain, presence: true, allow_nil: false, allow_blank:false
	validates :user_id, presence: true, allow_nil: false, allow_blank:false, uniqueness: true
	validates :user_name, presence: true, allow_nil: false, allow_blank:false
end
