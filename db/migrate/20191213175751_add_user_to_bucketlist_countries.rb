class AddUserToBucketlistCountries < ActiveRecord::Migration[5.2]
  def change
    add_reference :bucketlist_countries, :user, foreign_key: true
  end
end
