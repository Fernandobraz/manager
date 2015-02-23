class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :incomes
  has_many :outcomes

  def total_money
    #self.incomes.first.value
    @out_total = 0
    @inc_total = 0
    self.incomes.each do |inc|

      @inc_total = @inc_total + inc.value
    end
    self.outcomes.each do |out|

      @out_total = @out_total + out.value
    end
    result = @inc_total - @out_total
    return result
  end
end
