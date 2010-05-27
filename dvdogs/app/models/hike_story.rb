class HikeStory < ActiveRecord::Base
  belongs_to :hike
  belongs_to :dog

  named_scope :latest, :order => 'created_at DESC', :limit => 2

# Paperclip
has_attached_file :photo,
  :styles => {
    :list_thumb => "x180",
    :thumb => "100x100#",
    :small  => "150x150>",
    :medium => "300x300>",
    :large =>   "400x400>" }
    
end

