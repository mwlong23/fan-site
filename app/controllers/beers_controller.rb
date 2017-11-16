class BeersController < ApplicationController
  def index
    
  end

  def show
  end

  def new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def beer_params
    params.require(:beer).permit(:name, :alcohol_content, :ibu, :blg, :hops, :yeast, :malt, :bio)

end
