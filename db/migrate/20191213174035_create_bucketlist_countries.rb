class CreateBucketlistCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :bucketlist_countries do |t|
      t.string :name
      t.integer :rank

      t.timestamps
    end
  end
end
