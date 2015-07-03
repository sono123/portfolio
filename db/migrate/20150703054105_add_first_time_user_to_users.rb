class AddFirstTimeUserToUsers < ActiveRecord::Migration
  def change
    add_column :users, :first_time_user, :boolean
  end
end
