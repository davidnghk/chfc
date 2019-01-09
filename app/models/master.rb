class Master < ApplicationRecord
  has_many :children, :class_name => "Master", foreign_key: 'parent_id'
  belongs_to :parent, :class_name => "Master", foreign_key: 'parent_id', :optional => true
  has_many :workflows, :class_name => "WorkFlow", foreign_key: 'work_id' 
end
