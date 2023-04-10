class GroceriesController < ApplicationController
  def index
    @groceries = Grocery.all
    render template: "groceries/index"
  end

  def show
    @grocery = Grocery.find_by(id: params[:id])
    render template: "groceries/show"
  end

  def new
    @grocery = Grocery.new
    render :new
  end

  def create
    @grocery = Grocery.new(
      name: params[:name],
      price: params[:price],
      quantity: params[:quantity],
      category: params [:category],
    )
    if @grocery.save
      # happy path
      redirect_to "/groceries"
    else
      # sad path
      render json: { errors: @grocery.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def edit
    @groceries = Grocery.find_by(id: params[:id])
    render :edit
  end

  def update
    @grocery = Grocery.find_by(id: params[:id])
    @grocery.update(
      name: params[:name] || grocery.name,
      price: params[:price] || grocery.price,
      quantity: params[:quantity] || grocery.quantity,
      category: params[:category] || grocery.category
    )
    if @grocery.valid?
      # happy path
      redirect_to "/groceries"
    else
      # sad path
      render json: { errors: @grocery.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @grocery = Grocery.find_by(id: params[:id])
    @grocery.destroy
    redirect_to "/groceries", status: :see_other
  end
end
