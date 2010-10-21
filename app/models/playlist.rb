class Playlist < ActiveRecord::Base
  has_many :songs, :dependent => :destroy
  validates_presence_of :description
end
