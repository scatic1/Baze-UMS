class User < ApplicationRecord
	establish_connection UMS2
	has_secure_password

end
