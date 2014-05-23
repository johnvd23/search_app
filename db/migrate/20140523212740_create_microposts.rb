class CreateMicroposts < ActiveRecord::Migration
  def change
    create_table :microposts do |t|
      t.string :content
      t.integer :contact_id

      t.timestamps
    end
    add_index :microposts, [:contact_id, :created_at]
  end
end
