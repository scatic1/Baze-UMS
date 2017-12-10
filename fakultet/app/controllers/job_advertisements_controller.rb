class JobAdvertisementsController < ApplicationController
  before_action :set_job_advertisement, only: [:show, :edit, :update, :destroy]
#before_action :must_login, only: [:edit,:show,:update,:destroy,:index]
  # GET /job_advertisements
  # GET /job_advertisements.json
  def index
    @job_advertisements = JobAdvertisement.all

    #@job_application = JobApplication.new()
  end

  # GET /job_advertisements/1
  # GET /job_advertisements/1.json
  def show
  end

  # GET /job_advertisements/new
  def new
    @job_advertisement = JobAdvertisement.new()
    #@job_advertisements = JobAdvertisement.all
   # @job_application = JobApplication.new()
   
  end

  # GET /job_advertisements/1/edit
  def edit 
  end

  # POST /job_advertisements
  # POST /job_advertisements.json
  def create

    @job_advertisement = JobAdvertisement.new(job_advertisement_params)

    respond_to do |format|
      if @job_advertisement.save

        format.json { render :show, status: :created, location: @job_advertisement}
     
        format.html { redirect_to job_advertisements_path, notice: 'Job advertisement  was successfully created.' } 
      else
        format.html { render :new }
        format.json { render json: @job_advertisement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_advertisements/1
  # PATCH/PUT /job_advertisements/1.json
  def update
    respond_to do |format|
      if @job_advertisement.update(job_advertisement_params)
        format.html { redirect_to job_advertisements_path, notice: 'Job advertisement was successfully updated.' }
        format.json { render :show, status: :ok, location: @job_advertisement }
      else
        format.html { render :edit }
        format.json { render json: @job_advertisement.errors, status: :unprocessable_entity }
      end
    end 
  end

  # DELETE /job_advertisements/1
  # DELETE /job_advertisements/1.json
  
 def destroy
  @job_advertisement = JobAdvertisement.find(params[:id])

  respond_to do |format|
    if @job_advertisement.destroy
      format.html { redirect_to job_advertisements_url , notice: 'Job advertisement was successfully destroyed.'}
      format.json { head :no_content }
    else
      format.html # do something here
      format.json { head :no_content }
    end
  end
end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_advertisement
      @job_advertisement = JobAdvertisement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_advertisement_params
      params.require(:job_advertisement).permit(:work_position)
    end
   
end
