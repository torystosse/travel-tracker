class BucketlistCountrySerializer < ActiveModel::Serializer
  attributes :id, :name, :rank
  belongs_to :user
end
