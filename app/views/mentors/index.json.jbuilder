json.array!(@mentors) do |mentor|
  json.extract! mentor, :id, :Name, :Age, :DOB, :Sex, :Bio
  json.url mentor_url(mentor, format: :json)
end
