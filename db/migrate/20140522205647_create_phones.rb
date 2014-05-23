class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.string :phone
      t.string :phone_type
      t.integer :contact_id

      t.timestamps
    end
    add_index :phones, [:contact_id, :created_at]
  end
end
