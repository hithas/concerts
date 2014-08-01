class AttendeeToVenuesController < ApplicationController

  def index
    @attendee_to_venues = AttendeeToVenue.all
  end

  def show
    @attendee_to_venue = AttendeeToVenue.find_by(id: params[:id])
  end

  def new
  end

  def create
    @attendee_to_venue = AttendeeToVenue.new
    @attendee_to_venue.date = params[:date]
    @attendee_to_venue.time = params[:time]

    if @attendee_to_venue.save
      redirect_to "/attendee_to_venues/#{ @attendee_to_venue.id }"
    else
      render 'new'
    end
  end

  def edit
    @attendee_to_venue = AttendeeToVenue.find_by(id: params[:id])
  end

  def update
    @attendee_to_venue = AttendeeToVenue.find_by(id: params[:id])
    @attendee_to_venue.date = params[:date]
    @attendee_to_venue.time = params[:time]

    if @attendee_to_venue.save
      redirect_to "/attendee_to_venues/#{ @attendee_to_venue.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @attendee_to_venue = AttendeeToVenue.find_by(id: params[:id])
    @attendee_to_venue.destroy


    redirect_to "/attendee_to_venues"
  end
end
