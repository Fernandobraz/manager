json.array!(@incomes) do |income|
  json.extract! income, :id, :value, :origin, :paymentDate, :extrainfo, :currecy, :jobDate
  json.url income_url(income, format: :json)
end
