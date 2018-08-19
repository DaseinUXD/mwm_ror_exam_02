class CollectionItemsController < ApplicationController
  def index
    @items = CollectionItem.all
  end

  def new
    @item = CollectionItem.new
  end

  def create
    @item = CollectionItem.new(item_params)
    @item.save
    if @item.save
      flash[:notice] = "New @item created successfully"
      puts '+++++ @item.id +++++'
      puts @item.id
      # redirect_to 'redirect/url/route'
    else
      render 'new'
    end
  end

  def show
    @item = CollectionItem.find(@item.id)
  end

  def edit
  end

  def update
  end

  def destroy
  end
  private
  def item_params
    params.require(:item).permit(:attr_01, :attr_02, :user )
  end
end
