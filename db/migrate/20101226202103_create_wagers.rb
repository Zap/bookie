class CreateWagers < ActiveRecord::Migration
  def self.up
    create_table :wagers do |t|
      t.string :title
      t.text :description
      t.integer :left_user_id
      t.integer :right_user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :wagers
  end
end
