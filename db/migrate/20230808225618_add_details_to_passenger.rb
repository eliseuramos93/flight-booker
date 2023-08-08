class AddDetailsToPassenger < ActiveRecord::Migration[7.0]
  def change
    add_index :passengers, :email, unique: true
  end
end
