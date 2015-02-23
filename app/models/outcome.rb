class Outcome < ActiveRecord::Base
  belongs_to :user
  validates :value, :destiny, :paymentDate, presence: true
end
