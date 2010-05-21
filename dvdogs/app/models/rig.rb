class Rig < ActiveRecord::Base
  has_and_belongs_to_many :trips
  belongs_to :dog

  named_scope :by_name, :order => 'name'
  named_scope :active, :conditions => {:active => true}, :order => 'name'
  named_scope :inactive, :conditions => {:active => false}, :order => 'name'

end
