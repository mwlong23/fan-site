class StylesController < ApplicationController
  def index
    @brewery = Brewery.find(params[:brewery_id])
    @styles = @brewery.styles.all
    render :index

  end

  def show
    @brewery = Brewery.find(params[:brewery_id])
    @style = @brewery.styles.find(params[:id])
    render :show
  end

  def new
    @brewery = Brewery.find(params[:brewery_id])
    @style = @brewery.styles.new
  end

  def create
    @brewery = Brewery.find(params[:brewery_id])
    @style = @brewery.styles.new(style_params)
      if @style.save
        redirect_to brewery_path(@style.brewery)
      else
        render :new
      end
    end

    def edit
      @brewery = Brewery.find(params[:brewery_id])
      @style = Style.find(params[:id])
      render :edit
    end

    def update
      @brewery = Brewery.find(params[:brewery_id])
      @style = Style.find(params[:id])

      if @style.update(style_params)
        redirect_to brewery_path(@brewery)
      else
        render :edit
      end
    end

    def destroy
      @brewery = Brewery.find(params[:brewery_id])
      @style = @brewery.styles.find(params[:id])
      @style.destroy
      redirect_to brewery_path(@brewery)
    end

    private
    def style_params
      params.require(:style).permit(:style_name, :country_of_origin, :description)
    end


end
