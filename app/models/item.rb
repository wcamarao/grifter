require 'flickraw'

class Item < ActiveRecord::Base
  MILES_TO_METERS_RATIO = 1609.34
  before_create :set_default_status
  before_save :upload_picture

  validates :name, :picture, presence: true
  validates :value, numericality: { greater_than: 0 }

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

  def picture_320
    parse_picture('z')
  end

  def picture_640
    parse_picture('n')
  end

  def picture_original
    parse_picture('o')
  end

  private

  def set_default_status
    self.status = 'Active'
  end

  def upload_picture
    return unless picture.present? && (new_record? || changes.include?('picture'))
    flickr_id = flickr.upload_photo(picture.path, :title => picture.original_filename)
    flickr_info = flickr.photos.getInfo(:photo_id => flickr_id)
    self.picture = hashify_picture(flickr_info).to_json
  end

  def hashify_picture(flickr_info)
    {
      z: FlickRaw.url_z(flickr_info),
      n: FlickRaw.url_n(flickr_info),
      o: FlickRaw.url_o(flickr_info)
    }
  end

  def parse_picture(size)
    JSON.parse(self.picture)[size]
  end
end
