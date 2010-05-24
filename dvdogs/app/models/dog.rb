class Dog < ActiveRecord::Base
  has_and_belongs_to_many :trips
  has_and_belongs_to_many :hikes
  has_many :rigs
  has_many :hike_stories
  has_many :trip_stories

  named_scope :active, :conditions => {:active => true}, :order => 'name'
  named_scope :inactive, :conditions => {:active => false}, :order => 'name'

  named_scope :active_hominid, :conditions => {:family => "Hominid", :active => true}, :order => 'name'
  named_scope :inactive_hominid, :conditions => {:family => "Hominid", :active => false}, :order => 'name'
  named_scope :active_canine, :conditions => {:family => "Canine", :active => true}, :order => 'name'
  named_scope :inactive_canine, :conditions => {:family => "Canine", :active => false}, :order => 'name'

  named_scope :current_hominid, :joins => :trips, :order => 'name', :group => 'name', 
    :conditions => ["dogs_trips.trip_id IN (?)", Trip.last3.collect(&:id)]

  # not currently working.  Gets some that have and some that have NOT been on the last 3
  named_scope :old_hominid, :joins => :trips, :order => 'name', :group => 'name',
    :conditions => ["dogs_trips.trip_id IS NOT IN (?)", Trip.last3.collect(&:id)]

  named_scope :by_name, :order => 'name'

  # Paperclip
  has_attached_file :photo,
    :styles => {
      :list_thumb => "x180",
      :thumb => "64x64#",
      :small  => "150x150>",
      :medium => "300x300>",
      :large =>   "400x400>",
      :default_url => "/images/fs_icon_jeep.gif"
  }

end
