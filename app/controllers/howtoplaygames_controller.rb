class HowtoplaygamesController < ApplicationController
  before_action :set_howtoplaygame, only: [:show, :edit, :update, :destroy]

  # GET /howtoplaygames
  # GET /howtoplaygames.json
  def index
    @howtoplaygames = Howtoplaygame.all
  end

  # GET /howtoplaygames/1
  # GET /howtoplaygames/1.json
  def show
    @howtoplaygame = Howtoplaygame.find_by_game_id(params[:id])
  end

  # GET /howtoplaygames/new
  def new
    @howtoplaygame = Howtoplaygame.new
  end

  # GET /howtoplaygames/1/edit
  def edit
  end

  # POST /howtoplaygames
  # POST /howtoplaygames.json
  def create
    @howtoplaygame = Howtoplaygame.new(howtoplaygame_params)

    respond_to do |format|
      if @howtoplaygame.save
        format.html { redirect_to @howtoplaygame, notice: 'Howtoplaygame was successfully created.' }
        format.json { render :show, status: :created, location: @howtoplaygame }
      else
        format.html { render :new }
        format.json { render json: @howtoplaygame.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /howtoplaygames/1
  # PATCH/PUT /howtoplaygames/1.json
  def update
    respond_to do |format|
      if @howtoplaygame.update(howtoplaygame_params)
        format.html { redirect_to @howtoplaygame, notice: 'Howtoplaygame was successfully updated.' }
        format.json { render :show, status: :ok, location: @howtoplaygame }
      else
        format.html { render :edit }
        format.json { render json: @howtoplaygame.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /howtoplaygames/1
  # DELETE /howtoplaygames/1.json
  def destroy
    @howtoplaygame.destroy
    respond_to do |format|
      format.html { redirect_to howtoplaygames_url, notice: 'Howtoplaygame was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_howtoplaygame
      @howtoplaygame = Howtoplaygame.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def howtoplaygame_params
      params.require(:howtoplaygame).permit(:instructions, :game_id)
    end
end
