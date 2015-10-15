class PropertiesController < ApplicationController
  def index
    render json: Properties.all
  end
  def show
    render json: Properties.find(params[:id])
  end
end
