class CreateCities < ActiveRecord::Migration[6.1]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :country
      t.string :lat
      t.string :long

      t.timestamps
    end
  end
end
