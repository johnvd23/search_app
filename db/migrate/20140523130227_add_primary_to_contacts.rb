class AddPrimaryToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :primary_phone, :integer
    add_column :contacts, :primary_address, :integer
  end
end
