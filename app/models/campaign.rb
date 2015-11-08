class Campaign < ActiveRecord::Base
  belongs_to :owner, :class_name => "User"
  belongs_to :custodian, :class_name => "User"
  has_many :payments, -> { order(created_at: :desc) }
end
