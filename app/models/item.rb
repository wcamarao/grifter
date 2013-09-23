class Item < ActiveRecord::Base
  MILES_TO_METERS_RATIO = 1609.34

  def self.seed
    create({ location: 'San Francisco', lonlat: 'POINT (-122.420349 37.773592)' })
    create({ location: 'Daly City', lonlat: 'POINT (-122.467041 37.685614)' })
    create({ location: 'San Mateo', lonlat: 'POINT (-122.329712 37.562705)' })
    create({ location: 'Palo Alto', lonlat: 'POINT (-122.14325 37.45178)' })
    create({ location: 'Sunnyvale', lonlat: 'POINT (-122.032013 37.367787)' })
    create({ location: 'San Jose', lonlat: 'POINT (-121.896057 37.336129)' })
  end

  def self.within(miles)
    meters = miles * MILES_TO_METERS_RATIO
    Item.where("ST_Distance(lonlat, 'POINT(-122.420349 37.773592)') <= #{meters}")
  end
end
