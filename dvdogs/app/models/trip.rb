class Trip < ActiveRecord::Base
  has_and_belongs_to_many :dogs
  has_and_belongs_to_many :rigs
  has_many :hikes
  has_many :trip_stories

  
  named_scope :last3, :order => 'date DESC', :limit => 3
  named_scope :by_date, :order => 'date'
  named_scope :by_date_desc, :order => 'date DESC'

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
