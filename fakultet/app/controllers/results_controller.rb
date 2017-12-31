class ResultsController < ApplicationController
  before_action :set_result, only: [:show, :edit, :update, :destroy]

  # GET /results
  # GET /results.json
  def index
    @results = Result.all


  end


  # GET /results/1
  # GET /results/1.json
  def show
  end

  # GET /results/new
  def new
    @result = Result.new
    require 'csv'

  csv_text = File.read('csv.csv')
  csv = CSV.parse(csv_text, :headers => true, :col_sep => ';')

csv.each do |row|

  Result.create(:id => row[0], :name => row[1], :surname => row[2], :jmbg => row[3],:birthday => row[4], :placebirth =>row[5], :telephone =>row[6], :email =>row[7], :gender => row[8],:username=>row[9],
    :password=>row[10],:category =>row[11], :index =>row[12],:ects =>row[13], :year =>row[14], :subject_id=>row[15], :points=>row[16], :mark=>row[17])
end
  end
  def import
      @result = Result.new(result_params)
end

  # GET /results/1/edit
  def edit
  end

  # POST /results
  # POST /results.json
  def create
    @result = Result.new(result_params)

    respond_to do |format|
      if @result.save
        format.html { redirect_to @result, notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @result }
      else
        format.html { render :new }
        format.json { render json: @result.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /results/1
  # PATCH/PUT /results/1.json
  def update
    respond_to do |format|
      if @result.update(result_params)
        format.html { redirect_to @result, notice: 'Result was successfully updated.' }
        format.json { render :show, status: :ok, location: @result }
      else
        format.html { render :edit }
        format.json { render json: @result.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /results/1
  # DELETE /results/1.json
  def destroy
    @result.destroy
    respond_to do |format|
      format.html { redirect_to results_url, notice: 'Result was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_result
      @result = Result.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def result_params
      params.require(:result).permit(:name, :surname, :jmbg, :birthday, :placebirth, :telephone, :email, :gender, :username, :password, :category, :index, :ects, :year)
    end
end
