class BandToVenuesController < ApplicationController

  def index
    @band_to_venues = BandToVenue.all
  end

  def show
    @band_to_venue = BandToVenue.find_by(id: params[:id])
  end

  def new
  end

  def create
    @band_to_venue = BandToVenue.new
    @band_to_venue.date = params[:date]
    @band_to_venue.time = params[:time]

    if @band_to_venue.save
      redirect_to "/band_to_venues/#{ @band_to_venue.id }"
    else
      render 'new'
    end
  end

  def edit
    @band_to_venue = BandToVenue.find_by(id: params[:id])
  end

  def update
    @band_to_venue = BandToVenue.find_by(id: params[:id])
    @band_to_venue.date = params[:date]
    @band_to_venue.time = params[:time]

    if @band_to_venue.save
      redirect_to "/band_to_venues/#{ @band_to_venue.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @band_to_venue = BandToVenue.find_by(id: params[:id])
    @band_to_venue.destroy


    redirect_to "/band_to_venues"
  end
end
