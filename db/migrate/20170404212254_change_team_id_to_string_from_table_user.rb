class ChangeTeamIdToStringFromTableUser < ActiveRecord::Migration
  def change
  	 change_table :users do |t|
      t.change :team_id, :string
    end
  end
end
