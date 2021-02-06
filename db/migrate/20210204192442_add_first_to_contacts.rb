class AddFirstToContacts < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :first, :string
  end
end
