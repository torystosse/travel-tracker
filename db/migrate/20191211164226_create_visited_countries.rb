class CreateVisitedCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :visited_countries do |t|
      t.string :country
      t.integer :year

      t.timestamps
    end
  end
end
