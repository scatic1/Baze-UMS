class UsersController < ApplicationController
	before_action :must_login, only: [:about]
end
