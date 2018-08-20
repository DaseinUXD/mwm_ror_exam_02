class ItemsController < ApplicationController
  def index
    @items = Item.all
    @item = Item.new
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.save
    if @item.save
      flash[:notice] = "Congratulations #{@item.name}, was created successfully. "
      redirect_to '/items'
    else
      flash[:alert] = "User registration has failed. Please review errors below."
      render 'index'
    end

  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def item_params
    params.require(:item).permit(:name, :info, :user_id)
  end
end
