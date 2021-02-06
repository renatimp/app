class AddCityToContacts < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :city, :string
  end
end
