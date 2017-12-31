json.extract! result, :id, :name, :surname, :jmbg, :birthday, :placebirth, :telephone, :email, :gender, :username, :password, :category, :index, :ects, :year, :created_at, :updated_at
json.url student_url(result, format: :json)
