class BreweriesController < ApplicationController
  def index
    @breweries = Brewery.all
    # render :index
  end

  def show
    @brewery = Brewery.find(params[:id])
  end

  def new
    @brewery = Brewery.new
    render :new
  end
  def create
    @brewery = Brewery.new(brewery_params)
    if @brewery.save
      redirect_to breweries_path
    else
      render :new
    end
  end

  def edit
    @brewery = Brewery.find(params[:id])
    render :edit
  end

  def update
    @brewery = Brewery.find(params[:id])
    if @brewery.update(brewery_params)
      redirect_to breweries_path
    else
    render :edit
    end
  end

  def destroy
    @brewery = Brewery.find(params[:id])
    @brewery.destroy
    redirect_to breweries_path
  end


  private
    def brewery_params
      params.require(:brewery).permit(:name)
    end

end
