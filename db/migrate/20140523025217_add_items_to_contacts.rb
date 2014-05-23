class AddItemsToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :note, :string
    add_column :contacts, :confirmed, :boolean
    add_column :contacts, :territory_id, :integer
  end
end
