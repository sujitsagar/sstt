class CreateSujits < ActiveRecord::Migration
  def self.up
    create_table :sujits do |t|
      t.string :snss

      t.timestamps
    end
  end

  def self.down
    drop_table :sujits
  end
end
