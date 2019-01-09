class Workflow < ApplicationRecord
  belongs_to :location
  belongs_to :incharge_user, :class_name => "User", :foreign_key => "incharge_user_id"
  belongs_to :work, :class_name => "Master", :foreign_key => "work_id"
end
