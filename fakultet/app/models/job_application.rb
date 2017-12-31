class JobApplication < ApplicationRecord
  establish_connection UMS
  belongs_to :job_advertisements, :optional=>true
end
