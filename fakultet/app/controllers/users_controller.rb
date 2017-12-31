class UsersController < ApplicationController

  before_action :must_login, only: [:about]

	def index
    @users = User.all
    @job_applications=JobApplication.all
     end

  # GET /job_applications/1
  # GET /job_applications/1.json
  def show
     @users=User.all
  end

  # GET /job_applications/new
   def new
		@user = User.new()
		  @job_applications=JobApplication.all
		  @job_application=JobApplication.find_by_id(params[:id])
	end


  # GET /job_applications/1/edit
  def edit
  end

  # POST /job_applications
  # POST /job_applications.json
  def create

    @user = User.new(user_params)
   #@job_advertisements=JobAdvertisement.all
   # @job_application = JobApplication.new()
    respond_to do |format|

      if @user.save
        format.html { redirect_to root_path, notice: 'Successfully added user!' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }

      end
    end
  end

  # PATCH/PUT /job_applications/1
  # PATCH/PUT /job_applications/1.json
  def update
       # @job_application = JobApplication.new(job_application_params)
        #@job_advertisements=JobAdvertisement.all
         #@job_application = JobApplication.new()
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to show_user_path, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_applications/1
  # DELETE /job_applications/1.json

def destroy
  @user = User.find(params[:id])

  respond_to do |format|
    if @user.destroy
      format.html { redirect_to users_url , notice: 'User was successfully destroyed.'}
      format.json { head :no_content }
    else
      format.html # do something here
      format.json { head :no_content }
    end
  end
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :surname, :JMBG, :date_of_birth, :place_of_birth, :phone, :email, :gender, :username, :password)
    end
end
