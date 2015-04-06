json.array!(@students) do |student|
  json.extract! student, :id, :Name, :Age, :DOB, :Score, :School, :Level, :Sex
  json.url student_url(student, format: :json)
end
