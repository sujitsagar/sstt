class AddDetailstoEvents < ActiveRecord::Migration
  def self.up
     change_table :events do |t|
	t.text :details
	t.boolean :status
        t.integer :user_id
     end 
     add_index :events, ["user_id"], :name => "index_events_on_user_id"
  end

  def self.down
     remove_column :events, :details
     remove_column :events, :status
  end
end
