class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :birthdate, :date
    add_column :users, :photo_url, :string
    add_column :users, :userable_id, :integer
    add_column :users, :userable_type, :string
  end
end
