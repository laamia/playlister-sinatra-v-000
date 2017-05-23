class Song < ActiveRecord::Base
  belongs_to :artist
  has_many :song_genres
  has_many :genres, through: :song_genres
  include Slugifiable::Instance
  extend Slugifiable::Class
end