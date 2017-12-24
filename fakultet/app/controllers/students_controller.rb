class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  # GET /students
  # GET /students.json
  def index
    @students = Student.all


  end


  # GET /students/1
  # GET /students/1.json
  def show
  end

  # GET /students/new
  def new
    @student = Student.new
    require 'csv'

  csv_text = File.read('csv.csv')
  csv = CSV.parse(csv_text, :headers => true, :col_sep => ';')

csv.each do |row|

  Student.create(:id => row[0], :name => row[1], :surname => row[2], :jmbg => row[3],:birthday => row[4], :placebirth =>row[5], :telephone =>row[6], :email =>row[7], :gender => row[8],:username=>row[9],
    :password=>row[10],:category =>row[11], :index =>row[12],:ects =>row[13], :year =>row[14], :subject_id => row[15], :points=>row[16], :mark=>row[17])
end
  end
  def import
      @student = Student.new(student_params)
end

  # GET /students/1/edit
  def edit
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(student_params)

    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: 'Student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:name, :surname, :jmbg, :birthday, :placebirth, :telephone, :email, :gender, :username, :password, :category, :index, :ects, :year)
    end
end
