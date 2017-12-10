class JobApplicationsController < ApplicationController
  before_action :set_job_application, only: [:show, :edit, :update, :destroy]

  # GET /job_applications
  # GET /job_applications.json
  def index
    @job_applications = JobApplication.all
     @job_advertisements=JobAdvertisement.all
     @job_advertisement=JobAdvertisement.find_by_id(params[:id])
  end

  # GET /job_applications/1
  # GET /job_applications/1.json
  def show
         @job_advertisements=JobAdvertisement.all
     @job_advertisement=JobAdvertisement.find_by_id(params[:id])
  end

  # GET /job_applications/new 
  def new
    @job_application = JobApplication.new()
     @job_advertisements=JobAdvertisement.all
     @job_advertisement=JobAdvertisement.find_by_id(params[:id])
  end

  # GET /job_applications/1/edit
  def edit
        @job_advertisements=JobAdvertisement.all
     @job_advertisement=JobAdvertisement.find_by_id(params[:id])
  end

  # POST /job_applications
  # POST /job_applications.json
  def create
    @job_advertisements=JobAdvertisement.all
     @job_advertisement=JobAdvertisement.find_by_id(params[:id])
    @job_application = JobApplication.new(job_application_params)
   #@job_advertisements=JobAdvertisement.all
   # @job_application = JobApplication.new()
    respond_to do |format|

      if @job_application.save
        format.html { redirect_to root_path, notice: 'Successfully sent job application!' }
        format.json { render :show, status: :created, location: @job_application }
      else
        format.html { render :new }
        format.json { render json: @job_application.errors, status: :unprocessable_entity }

      end
    end
  end

  # PATCH/PUT /job_applications/1
  # PATCH/PUT /job_applications/1.json
  def update
       # @job_application = JobApplication.new(job_application_params)
        #@job_advertisements=JobAdvertisement.all
         #@job_application = JobApplication.new()
             @job_advertisements=JobAdvertisement.all
     @job_advertisement=JobAdvertisement.find_by_id(params[:id])
    respond_to do |format|
      if @job_application.update(job_application_params)
        format.html { redirect_to showapp_path, notice: 'Job application was successfully updated.' }
        format.json { render :show, status: :ok, location: @job_application }
      else
        format.html { render :edit }
        format.json { render json: @job_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_applications/1
  # DELETE /job_applications/1.json
 
def destroy
  @job_application = JobApplication.find(params[:id])

  respond_to do |format|
    if @job_application.destroy
      format.html { redirect_to job_applications_url , notice: 'Job application was successfully destroyed.'}
      format.json { head :no_content }
    else
      format.html # do something here
      format.json { head :no_content }
    end
  end
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_application
      @job_application = JobApplication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_application_params
      params.require(:job_application).permit(:name, :surname, :JBMG, :date_of_birth, :place_of_birth, :telephone_number, :email, :gender, :CV, :motivation_letter, :job_advertisements_id)
    end
end
