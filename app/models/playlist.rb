class Playlist < ActiveRecord::Base
  has_many :songs, :dependent => :destroy
  validates_presence_of :description
  after_create {|playlist| playlist.songs.create(:artist => 'Automatycznie dodawany utwór', :title => 'Intro') }
end
