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
      bun: params[:the_bun],
      meat: params[:the_meat],
      price: params[:the_price]
    )
    render 'show.json.jb'
  end
end
