class ExamApplicationsController < ApplicationController
  before_action :set_exam_application, only: [:show, :edit, :update, :destroy]

  # GET /exam_applications
  # GET /exam_applications.json
  def index
    @exam_applications = ExamApplication.all
    @exams = Exam.all
    
  end

  # GET /exam_applications/1
  # GET /exam_applications/1.json
  def show
  end

  # GET /exam_applications/new
  def new
    @exam_application = ExamApplication.new
  end

  # GET /exam_applications/1/edit
  def edit
  end

  # POST /exam_applications
  # POST /exam_applications.json
  def create
    @exam_application = ExamApplication.new(exam_application_params)

    respond_to do |format|
      if @exam_application.save
        format.html { redirect_to @exam_application, notice: 'Exam application was successfully created.' }
        format.json { render :show, status: :created, location: @exam_application }
      else
        format.html { render :new }
        format.json { render json: @exam_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exam_applications/1
  # PATCH/PUT /exam_applications/1.json
  def update
    respond_to do |format|
      if @exam_application.update(exam_application_params)
        format.html { redirect_to @exam_application, notice: 'Exam application was successfully updated.' }
        format.json { render :show, status: :ok, location: @exam_application }
      else
        format.html { render :edit }
        format.json { render json: @exam_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exam_applications/1
  # DELETE /exam_applications/1.json
  def destroy
    @exam_application.destroy
    respond_to do |format|
      format.html { redirect_to exam_applications_url, notice: 'Exam application was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exam_application
      @exam_application = ExamApplication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exam_application_params
      params.require(:exam_application).permit(:apply, :exam_id, :student_id)
    end
end
