class Exam < ApplicationRecord
  establish_connection UMS2
  belongs_to :subject
end
