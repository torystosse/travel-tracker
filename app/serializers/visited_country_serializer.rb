class VisitedCountrySerializer < ActiveModel::Serializer
  attributes :id, :country, :year
  belongs_to :user
end
