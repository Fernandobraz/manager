json.array!(@outcomes) do |outcome|
  json.extract! outcome, :id, :value, :destiny, :paymentDate, :extrainfo, :currecy, :taxReduce, :userId
  json.url outcome_url(outcome, format: :json)
end
