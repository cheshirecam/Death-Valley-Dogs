class HikeStory < ActiveRecord::Base
  belongs_to :hike
  belongs_to :dog

  named_scope :latest, :order => 'updated_at DESC', :limit => 4

# Paperclip
has_attached_file :photo,
  :styles => {
    :list_thumb => "180x180#",
    :thumb => "100x100#",
    :small  => "150x150>",
    :medium => "300x300>",
    :large =>   "400x400>" }
    
end

