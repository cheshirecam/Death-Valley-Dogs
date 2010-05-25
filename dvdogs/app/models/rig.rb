class Rig < ActiveRecord::Base
  has_and_belongs_to_many :trips
  belongs_to :dog

  named_scope :by_name, :order => 'name'
  named_scope :active, :conditions => {:active => true}, :order => 'name'
  named_scope :inactive, :conditions => {:active => false}, :order => 'name'

  # Paperclip
  has_attached_file :photo,
    :styles => {
      :list_thumb => "x180",
      :thumb => "64x64#",
      :small  => "150x150>",
      :medium => "300x300>",
      :large =>   "400x400>",
    },
    :default_url => "/images/fs_icon_jeep.gif"


end
