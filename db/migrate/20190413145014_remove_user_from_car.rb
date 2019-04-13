class RemoveUserFromCar < ActiveRecord::Migration[5.2]
  def change
    remove_column :cars, :user, :string
  end
end
