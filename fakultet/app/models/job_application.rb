class JobApplication < ApplicationRecord
  belongs_to :job_advertisements, :optional=>true
end
