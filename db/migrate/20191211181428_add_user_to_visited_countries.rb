class AddUserToVisitedCountries < ActiveRecord::Migration[5.2]
  def change
    add_reference :visited_countries, :user, foreign_key: true
  end
end
