class Project < ActiveRecord::Base
  extend NestedParams
  
  # Automatically turns on autosave and thus also validates
  has_many :tasks, :dependent => :destroy, :nested_params => true, :destroy_missing => true, :reject_empty => true
  
  validates_presence_of :name
end
