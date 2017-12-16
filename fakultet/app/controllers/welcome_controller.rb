class WelcomeController < ApplicationController
before_action :must_login, only: [:about]
  def homepage
      @job_advertisements = JobAdvertisement.all

  end

  def about
  end

  def blog
  end

  def contact
  end

end
