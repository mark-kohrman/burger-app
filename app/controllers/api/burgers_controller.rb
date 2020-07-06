class Api::BurgersController < ApplicationController
  def index
    @burgers = Burger.all
    render 'index.json.jb'
  end
end
