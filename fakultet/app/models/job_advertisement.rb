class JobAdvertisement < ApplicationRecord
  ActiveRecord::Base.establish_connection UMS
  has_many:job_applications
end
