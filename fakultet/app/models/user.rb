class User < ApplicationRecord
	establish_connection "#{Rails.env}_sec".to_sym
	has_secure_password

end
