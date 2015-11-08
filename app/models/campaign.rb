class Campaign < ActiveRecord::Base
  belongs_to :user
  belongs_to :custodian, :class_name => "User"
end
