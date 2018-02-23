require 'pry'
require_relative "./concerns/memorable"

class Song
  extend Memorable::ClassMethods#::self.reset_all
  extend Findable::ClassMethods
  include Paramable::InstanceMethods
  # extend Memorable:#:self.count

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    # @@songs << self
    self.class.all << self
  end

  # def self.find_by_name(name)
  #   @@songs.detect{|a| a.name == name}
  # end

  def artist=(artist)
    @artist = artist
  end

  # def self.reset_all
  #   @@songs.clear
  # end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
  #
  # def self.count
  #   self.all.count
  # end

  def self.all
    @@songs
  end
end
