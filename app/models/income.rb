class Income < ActiveRecord::Base
  belongs_to :user
  validates :value, :origin, :paymentDate, presence: true
end
