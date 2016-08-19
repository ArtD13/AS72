class SchollsController < ApplicationController
  before_action :set_scholl, only: [:show, :edit, :update, :destroy]

  # GET /scholls
  # GET /scholls.json
  def index
    @scholls = Scholl.all
  end

  # GET /scholls/1
  # GET /scholls/1.json
  def show
  end

  # GET /scholls/new
  def new
    @scholl = Scholl.new
  end

  # GET /scholls/1/edit
  def edit
  end

  # POST /scholls
  # POST /scholls.json
  def create
    @scholl = Scholl.new(scholl_params)

    respond_to do |format|
      if @scholl.save
        format.html { redirect_to @scholl, notice: 'Новая автошкола успешно добавлена.' }
        format.json { render :show, status: :created, location: @scholl }
      else
        format.html { render :new }
        format.json { render json: @scholl.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scholls/1
  # PATCH/PUT /scholls/1.json
  def update
    respond_to do |format|
      if @scholl.update(scholl_params)
        format.html { redirect_to @scholl, notice: 'Scholl was successfully updated.' }
        format.json { render :show, status: :ok, location: @scholl }
      else
        format.html { render :edit }
        format.json { render json: @scholl.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scholls/1
  # DELETE /scholls/1.json
  def destroy
    @scholl.destroy
    respond_to do |format|
      format.html { redirect_to scholls_url, notice: 'Scholl was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scholl
      @scholl = Scholl.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scholl_params
      params.require(:scholl).permit(:name, :adress, :phone, :category, :body)
    end
end
