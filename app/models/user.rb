class User < ApplicationRecord
  reverse_geocoded_by :lat, :lon
end
