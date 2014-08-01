class AttendeeVenuesController < ApplicationController

  def index
    @attendee_venues = AttendeeVenue.all
  end

  def show
    @attendee_venue = AttendeeVenue.find_by(id: params[:id])
  end

  def new
  end

  def create
    @attendee_venue = AttendeeVenue.new
    @attendee_venue.attendee_id = params[:attendee_id]
    @attendee_venue.venue_id = params[:venue_id]
    @attendee_venue.date = params[:date]
    @attendee_venue.time = params[:time]

    if @attendee_venue.save
      redirect_to "/attendee_venues/#{ @attendee_venue.id }"
    else
      render 'new'
    end
  end

  def edit
    @attendee_venue = AttendeeVenue.find_by(id: params[:id])
  end

  def update
    @attendee_venue = AttendeeVenue.find_by(id: params[:id])
    @attendee_venue.attendee_id = params[:attendee_id]
    @attendee_venue.venue_id = params[:venue_id]
    @attendee_venue.date = params[:date]
    @attendee_venue.time = params[:time]

    if @attendee_venue.save
      redirect_to "/attendee_venues/#{ @attendee_venue.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @attendee_venue = AttendeeVenue.find_by(id: params[:id])
    @attendee_venue.destroy


    redirect_to "/attendee_venues"
  end
end
