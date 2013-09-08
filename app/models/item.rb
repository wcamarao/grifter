require 'flickraw'

class Item < ActiveRecord::Base
  belongs_to :user
  before_create :upload_picture

  validates_presence_of :name

  def upload_picture
    id = flickr.upload_photo picture.path, :title => picture.original_filename
    info = flickr.photos.getInfo(:photo_id => id)
    self.picture = FlickRaw.url_z(info)
  end
end
