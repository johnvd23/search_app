class AddPhoneAddressToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :street, :string
    add_column :contacts, :street_2, :string
    add_column :contacts, :city, :string
    add_column :contacts, :state, :string
    add_column :contacts, :zip, :string
    add_column :contacts, :phone, :string
    add_column :contacts, :phone_2, :string
  end
end
