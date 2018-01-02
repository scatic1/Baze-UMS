class ExamApplicationsController < ApplicationController
  before_action :set_exam_application, only: [:show, :edit, :update, :destroy]

  # GET /exam_applications
  # GET /exam_applications.json
  def index
    @exam_applications = ExamApplication.all
     @exams = Exam.all
     @exam=Exam.find_by_id(params[:id])
     @examtitle=Exam.find_by_id(params[:title])

  end

  # GET /exam_applications/1
  # GET /exam_applications/1.json
  def show
    @exams = Exam.all

  @exam_applications = ExamApplication.all

  @exam_application = ExamApplication.new
  @exam = Exam.new
  t='false'
  @postoji=ExamApplication.find_by_exam_id(params[:id])
  user = current_user
  if(@postoji!=nil)

  t='true'
  respond_to do |format|
  format.html { redirect_to exam_applications_path, notice: 'Vec ste prijavljeni na ovaj ispit.' }
  format.json { render :show, status: :created, location: @exam_application }

  end
end

  if(t=='false')
  @s=Student.find_by_user_id(user.id)
  @u=ExamApplication.new
  u=ExamApplication.create :apply=>'true', :exam_id=>params[:id], :student_id=>@s.id
  respond_to do |format|
  format.html { redirect_to exam_applications_path, notice: 'Uspjesno ste prijavljeni!.' }
  format.json { render :show, status: :created, location: @exam_application }

  end

  end
    if(t=='true')


  end


  end

  # GET /exam_applications/new
  def new
    @exam_applications = ExamApplication.all

     @exam=Exam.find_by_id(params[:id])
     @examtitle=Exam.find_by_id(params[:title])
    @exam_application = ExamApplication.new
    @exams = Exam.all
     @exam=Exam.find_by_id(params[:id])
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  # GET /exam_applications/1/edit
  def edit
     @exams = Exam.all
     @exam=Exam.find_by_id(params[:id])

  end

  # POST /exam_applications
  # POST /exam_applications.json
  def create
    @exam_application = ExamApplication.new(exam_application_params)
 @exams = Exam.all
     @exam=Exam.find_by_id(params[:id])

    respond_to do |format|
      if @exam_application.save
        format.html { redirect_to exam_applications_path, notice: 'Exam application was successfully created.' }
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
     @exams = Exam.all
     @exam=Exam.find_by_id(params[:id])
     @currentUser = current_user.id
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
      @exam_application = ExamApplication.new
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exam_application_params
      params.require(:exam_application).permit(:apply, :exam_id, :student_id)
    end
end
