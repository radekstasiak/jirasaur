class ChangeUserIdToStringFromTableUser < ActiveRecord::Migration
  def change
  	change_table :users do |t|
      t.change :user_id, :string
    end
  end
end
