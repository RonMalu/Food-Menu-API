class CategoriesController < ApplicationController
  def index
    categories = Category.all

     HardWorker.perform_async(5)

    render json: categories 
  end 


  def show
  end 


  def create 
    category = Category.new(
      name: params[:name],
      price: params[:price],
      category_id: params[:category_id]
      

    )


    if category.save
      render json: category, status: :created
    else 
      render json: category.errors, status: :unprocessable_entity
    end 
  end 

end
