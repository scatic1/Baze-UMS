class ExamApplication < ApplicationRecord
  belongs_to :exam
  belongs_to :student
end
