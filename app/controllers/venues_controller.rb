class VenuesController < ApplicationController

  def index
    @venues = Venue.all
  end

  def show
    @venue = Venue.find_by(id: params[:id])
  end

  def new
  end

  def create
    @venue = Venue.new
    @venue.country = params[:country]
    @venue.city = params[:city]

    if @venue.save
      redirect_to "/venues/#{ @venue.id }"
    else
      render 'new'
    end
  end

  def edit
    @venue = Venue.find_by(id: params[:id])
  end

  def update
    @venue = Venue.find_by(id: params[:id])
    @venue.country = params[:country]
    @venue.city = params[:city]

    if @venue.save
      redirect_to "/venues/#{ @venue.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @venue = Venue.find_by(id: params[:id])
    @venue.destroy


    redirect_to "/venues"
  end
end
