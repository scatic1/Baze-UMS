json.extract! job_application, :id, :name, :surname, :JBMG, :date_of_birth, :place_of_birth, :telephone_number, :email, :gender, :CV, :motivation_letter, :job_advertisements_id, :created_at, :updated_at
json.url job_application_url(job_application, format: :json)
