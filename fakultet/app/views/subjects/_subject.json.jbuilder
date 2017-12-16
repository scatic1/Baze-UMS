json.extract! subject, :id, :title, :ECTS, :cycle, :semester, :subject_type, :created_at, :updated_at
json.url subject_url(subject, format: :json)
