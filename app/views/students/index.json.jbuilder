json.array!(@students) do |student|
  json.extract! student, :id, :name, :project
  json.url student_url(student, format: :json)
end
