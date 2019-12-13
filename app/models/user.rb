# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :visited_countries
  has_many :bucketlist_countries
end
