class Rig < ActiveRecord::Base
  has_and_belongs_to_many :trips
  belongs_to :dog

  named_scope :by_name, :order => 'name'

end
