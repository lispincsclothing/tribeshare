class Campaign < ActiveRecord::Base
  belongs_to :owner, :class_name => "User"
  belongs_to :custodian, :class_name => "User"
end
