class ChangePhoneInRestaurants < ActiveRecord::Migration[5.2]
  # def change
  #   rename_column :restaurants, :phone, :phone_number
  # end

  def up
    remove_reference :reviews, :restaurant, index: true, foreign_key: true
    remove_column :restaurants, :phone
    add_column :restaurants, :phone_number, :integer
    add_reference :reviews, :restaurant, index: true, foreign_key: true

    # rename_column :restaurants, :phone, :phone_number
  end

  def down
    remove_reference :reviews, :restaurant, index: true, foreign_key: true
    remove_column :restaurants, :phone_number
    add_column :restaurants, :phone, :integer
    add_reference :reviews, :restaurant, index: true, foreign_key: true

    # rename_column :restaurants, :phone_number, :phone
  end
end
