class MenuItemsController < ApplicationController
  
  def index
    menu_items = MenuItem.all

    render json: menu_items 
  end 

  def show
    @menu_item = MenuItem.find(params[:id])
    
    render json: @menu_item
    
  end 

  def create 
    menu_item = MenuItem.new(
      name: params[:name],
      price: params[:price],
      category_id: params[:category_id]
      

    )


    if menu_item.save
      render json: menu_item, status: :created
    else 
      render json: menu_item.errors, status: :unprocessable_entity
    end 
  end 
end
