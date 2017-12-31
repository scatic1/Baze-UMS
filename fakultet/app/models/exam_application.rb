class ExamApplication < ApplicationRecord
  establish_connection UMS2
  belongs_to :exam
  belongs_to :student
end
