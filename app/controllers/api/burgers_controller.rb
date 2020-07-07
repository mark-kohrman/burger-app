class Api::BurgersController < ApplicationController
  def index
    @burgers = Burger.all
    render 'index.json.jb'
  end

  def show
    @burger = Burger.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @burger = Burger.new(
      bun: params[:bun],
      meat: params[:meat],
      price: params[:price]
    )
    @burger.save
    render 'show.json.jb'
  end

  def update
    @burger = Burger.find_by(id: params[:id])
    @burger.update(
      bun: params[:the_bun] || @burger.bun,
      meat: params[:the_meat] || @burger.meat,
      price: params[:the_price] || @burger.price
    )
    render 'show.json.jb'
  end

  def destroy
    @burger = Burger.find_by(id: params[:id])
    @burger.destroy
    render json: {message: "You're burger has been sucessfully destroyed.  It was eaten by your Corgi"}
  end
end
