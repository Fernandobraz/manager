class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @last_incomes = current_user.incomes.last(5)
    @current_month_outcomes = current_user.outcomes.where("paymentDate <= ?", Date.today.end_of_month).where("paymentDate >= ?", Date.today.beginning_of_month)
    @last_outcomes = current_user.outcomes.last(5)
  end
end
