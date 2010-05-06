class HikeStory < ActiveRecord::Base
  belongs_to :hike
  has_one :dog
end
