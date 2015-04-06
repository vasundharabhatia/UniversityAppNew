json.array!(@colleges) do |college|
  json.extract! college, :id, :Name, :Country, :SATMinScore, :SATMaxScore, :TuitionFees
  json.url college_url(college, format: :json)
end
