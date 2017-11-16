class BeersController < ApplicationController
  def index
    @style = Style.find(params[:style_id])
    @beer = @style.beers.all
  end

  def show
    @style = Style.find(params[:style_id])
    @beer = @style.beers.find(params[:id])
    render :show
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

end
