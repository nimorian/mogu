class NovelLinksController < ApplicationController
  before_action :set_novel_link, only: [:show, :edit, :update, :destroy]

  # GET /novel_links
  # GET /novel_links.json
  def index
    @novel_links = NovelLink.all
  end

  # GET /novel_links/1
  # GET /novel_links/1.json
  def show
  end

  # GET /novel_links/new
  def new
    @novel_link = NovelLink.new
  end

  # GET /novel_links/1/edit
  def edit
  end

  # POST /novel_links
  # POST /novel_links.json
  def create
    @novel_link = NovelLink.new(novel_link_params)

    respond_to do |format|
      if @novel_link.save
        format.html { redirect_to @novel_link, notice: 'Novel link was successfully created.' }
        format.json { render action: 'show', status: :created, location: @novel_link }
      else
        format.html { render action: 'new' }
        format.json { render json: @novel_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /novel_links/1
  # PATCH/PUT /novel_links/1.json
  def update
    respond_to do |format|
      if @novel_link.update(novel_link_params)
        format.html { redirect_to @novel_link, notice: 'Novel link was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @novel_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /novel_links/1
  # DELETE /novel_links/1.json
  def destroy
    @novel_link.destroy
    respond_to do |format|
      format.html { redirect_to novel_links_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_novel_link
      @novel_link = NovelLink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def novel_link_params
      params.require(:novel_link).permit(:page_id, :to_page_id, :name)
    end
end
