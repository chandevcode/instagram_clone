class BodiesController < ApplicationController
  before_action :set_body, only: %i[ show edit update destroy ]

  # GET /bodies or /bodies.json
  def index
    @bodies = Body.all
  end

  # GET /bodies/1 or /bodies/1.json
  def show
  end

  # GET /bodies/new
  def new
    @body = Body.new
  end

  # GET /bodies/1/edit
  def edit
  end

  # POST /bodies or /bodies.json
  def create
    @body = Body.new(body_params)

    respond_to do |format|
      if @body.save
        format.html { redirect_to body_url(@body), notice: "Body was successfully created." }
        format.json { render :show, status: :created, location: @body }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @body.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bodies/1 or /bodies/1.json
  def update
    respond_to do |format|
      if @body.update(body_params)
        format.html { redirect_to body_url(@body), notice: "Body was successfully updated." }
        format.json { render :show, status: :ok, location: @body }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @body.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bodies/1 or /bodies/1.json
  def destroy
    @body.destroy

    respond_to do |format|
      format.html { redirect_to bodies_url, notice: "Body was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_body
      @body = Body.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def body_params
      params.require(:body).permit(:user_id, :post_id)
    end
end
