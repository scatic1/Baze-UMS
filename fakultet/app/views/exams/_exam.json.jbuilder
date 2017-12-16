json.extract! exam, :id, :exam_time, :exam_place, :subject_id, :created_at, :updated_at
json.url exam_url(exam, format: :json)
