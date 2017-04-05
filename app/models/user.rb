class User < ActiveRecord::Base

	validates :team_id, presence: true, allow_nil: false, allow_blank:false, uniqueness: true
	validates :team_domain, presence: true, allow_nil: false, allow_blank:false
	validates :user_id, presence: true, allow_nil: false, allow_blank:false, uniqueness: true
	validates :user_name, presence: true, allow_nil: false, allow_blank:false
end
