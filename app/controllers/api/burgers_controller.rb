class Api::BurgersController < ApplicationController
  def index
    @burgers = Burger.all
    render 'index.json.jb'
  end

  def show
    @burger = Burger.find_by(id: params[:id])
    render 'show.json.jb'
  end
end
