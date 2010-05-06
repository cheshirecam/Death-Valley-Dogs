class Hike < ActiveRecord::Base
  has_and_belongs_to_many :dogs
  belongs_to :trip
  has_many :hike_stories

  named_scope :by_date, :order => 'date'

end
