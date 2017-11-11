class WelcomeController < ApplicationController
before_action :must_login, only: [:about]
  def homepage
  end

  def about
  end

  def blog
  end

  def contact
  end
  
end
