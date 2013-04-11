class NovelPagesController < ApplicationController
  before_action :set_novel_page, only: [:show, :edit, :update, :destroy]

  # GET /novel_pages
  # GET /novel_pages.json
  def index
    @novel_pages = NovelPage.all
  end

  # GET /novel_pages/1
  # GET /novel_pages/1.json
  def show
  end

  # GET /novel_pages/new
  def new
    @novel_page = NovelPage.new
  end

  # GET /novel_pages/1/edit
  def edit
  end

  # POST /novel_pages
  # POST /novel_pages.json
  def create
    @novel_page = NovelPage.new(novel_page_params)

    respond_to do |format|
      if @novel_page.save
        format.html { redirect_to @novel_page, notice: 'Novel page was successfully created.' }
        format.json { render action: 'show', status: :created, location: @novel_page }
      else
        format.html { render action: 'new' }
        format.json { render json: @novel_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /novel_pages/1
  # PATCH/PUT /novel_pages/1.json
  def update
    respond_to do |format|
      if @novel_page.update(novel_page_params)
        format.html { redirect_to @novel_page, notice: 'Novel page was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @novel_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /novel_pages/1
  # DELETE /novel_pages/1.json
  def destroy
    @novel_page.destroy
    respond_to do |format|
      format.html { redirect_to novel_pages_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_novel_page
      @novel_page = NovelPage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def novel_page_params
      params.require(:novel_page).permit(:novel_id, :title, :body, :status)
    end
end
