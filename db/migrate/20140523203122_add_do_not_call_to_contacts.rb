class AddDoNotCallToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :do_not_call, :boolean
    add_column :contacts, :moved, :boolean
  end
end
