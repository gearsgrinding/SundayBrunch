class AddResetToUsers < ActiveRecord::Migration
  def change
    add_column :users, :reset_digest, :string
    add_column :users, :generate, :string
    add_column :users, :migration, :string
    add_column :users, :add_reset_to_users, :string
  end
end
