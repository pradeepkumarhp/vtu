class CreatePagesUsers < ActiveRecord::Migration
  def up
  	create_table :pages_users, :id => false do |t|
  		t.string "user_id"
  		t.string "page_id"
  	end
  	add_index :pages_users, ["user_id","page_id"]
  end

  def down
  	drop_table :pages_users
  end
end
