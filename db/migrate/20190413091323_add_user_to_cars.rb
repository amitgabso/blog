class AddUserToCars < ActiveRecord::Migration[5.2]
  def change
    add_column :cars, :user, :string
  end
end
