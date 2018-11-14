class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]


  # GET /items
  # GET /items.json
  def index
    @items = Item.all
    @items = Item.paginate(:page => params[:page], :per_page => 32)
    # .order('items.name ASC')
    # respond_to do |format|
    #   format.xlsx {
    #     response.headers[
    #       'Content-Disposition'
    #     ] = "attachment; filename = 'items.xlsx'"
    #   }
    #   format.html {render :index}
    # end
  end

  # @items = Item.search '*',
  #     facets: [:name],
  #     order: [
  #       { date: { order: :desc}}
  #     ],
  #     page: params[:page],
  #     per_page: 12


  # CSV.foreach("/public/Book1.csv", :headers => true) do |row|
  #   Moulding.create!(row.to_hash)
# end

  # GET /items/1
  # GET /items/1.json
  def show
    @items = Item.all
  end

  # GET /items/new
  def new
    @item = Item.new
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(item_params)
    @item.save

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    def search
      @item = Item.search(param[:name])
      @items.each do |product|
        puts product.name
      end
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:id, :name, :color, :width, :height, :rabbet, :pcs, :ft, :condition, :img_url)
    end
end
