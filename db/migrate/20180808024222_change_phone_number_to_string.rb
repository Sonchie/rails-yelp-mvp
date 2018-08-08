class ChangePhoneNumberToString < ActiveRecord::Migration[5.2]
  def change
    remove_reference :reviews, :restaurant, index: true, foreign_key: true
    change_column :restaurants, :phone_number, :string
    add_reference :reviews, :restaurant, index: true, foreign_key: true

  end

  # def up
  #   change_column :restaurants, :phone_number, :string
  # end

  # def down
  #   change_column :restaurants, :phone_number, :integer
  # end
end


