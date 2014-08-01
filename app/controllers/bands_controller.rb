class BandsController < ApplicationController

  def index
    @bands = Band.all
  end

  def show
    @band = Band.find_by(id: params[:id])
  end

  def new
  end

  def create
    @band = Band.new
    @band.name = params[:name]
    @band.genre = params[:genre]
    @band.nom = params[:nom]

    if @band.save
      redirect_to "/bands/#{ @band.id }"
    else
      render 'new'
    end
  end

  def edit
    @band = Band.find_by(id: params[:id])
  end

  def update
    @band = Band.find_by(id: params[:id])
    @band.name = params[:name]
    @band.genre = params[:genre]
    @band.nom = params[:nom]

    if @band.save
      redirect_to "/bands/#{ @band.id }"
    else
      render 'edit'
    end
  end
  
  def add_venue
    bv = BandVenue.new
    bv.band_id = params[:id]
    bv.venue_id = params[:venue_id]
    bv.save
    redirect_to "/bands/#{ params[:id] }"
  end

  def destroy
    @band = Band.find_by(id: params[:id])
    @band.destroy


    redirect_to "/bands"
  end
end
