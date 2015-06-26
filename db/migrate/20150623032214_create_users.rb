class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string   "email"
	    t.string   "access_token"
	    t.string   "refresh_token"
	    t.datetime "expires_at"
	    t.datetime "created_at"
	    t.datetime "updated_at"
    end
  end
end
