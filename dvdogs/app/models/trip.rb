class Trip < ActiveRecord::Base
  has_and_belongs_to_many :dogs
  has_and_belongs_to_many :rigs
  has_many :hikes
  has_many :trip_stories

  
  named_scope :last3, :order => 'date DESC', :limit => 3
  named_scope :by_date, :order => 'date'

end
