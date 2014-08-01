class BandVenuesController < ApplicationController

  def index
    @band_venues = BandVenue.all
  end

  def show
    @band_venue = BandVenue.find_by(id: params[:id])
  end

  def new
  end

  def create
    @band_venue = BandVenue.new
    @band_venue.band_id = params[:band_id]
    @band_venue.venue_id = params[:venue_id]
    @band_venue.date = params[:date]
    @band_venue.time = params[:time]

    if @band_venue.save
      redirect_to "/band_venues/#{ @band_venue.id }"
    else
      render 'new'
    end
  end

  def edit
    @band_venue = BandVenue.find_by(id: params[:id])
  end

  def update
    @band_venue = BandVenue.find_by(id: params[:id])
    @band_venue.band_id = params[:band_id]
    @band_venue.venue_id = params[:venue_id]
    @band_venue.date = params[:date]
    @band_venue.time = params[:time]

    if @band_venue.save
      redirect_to "/band_venues/#{ @band_venue.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @band_venue = BandVenue.find_by(id: params[:id])
    @band_venue.destroy


    redirect_to "/band_venues"
  end
end
