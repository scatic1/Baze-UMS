json.extract! job_advertisement, :id, :work_position, :created_at, :updated_at
json.url job_advertisement_url(job_advertisement, format: :json)
