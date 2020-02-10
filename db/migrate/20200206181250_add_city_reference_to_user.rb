class AddCityReferenceToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :city, foreign_key: true, index: true
  end
end
