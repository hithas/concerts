class AttendeesController < ApplicationController

  def index
    @attendees = Attendee.all
  end

  def show
    @attendee = Attendee.find_by(id: params[:id])
    @attendee_venues = AttendeeVenue.where(attendee_id: @attendee.id)
  end

  def new
  end

  def create
    @attendee = Attendee.new
    @attendee.name = params[:name]

    if @attendee.save
      redirect_to "/attendees/#{ @attendee.id }"
    else
      render 'new'
    end
  end

  def edit
    @attendee = Attendee.find_by(id: params[:id])
  end

  def update
    @attendee = Attendee.find_by(id: params[:id])
    @attendee.name = params[:name]

    if @attendee.save
      redirect_to "/attendees/#{ @attendee.id }"
    else
      render 'edit'
    end
  end
  
  def add_venue
    av = AttendeeVenue.new
    bv = BandVenue.find_by(id: params['bv_id'])
    av.attendee_id = params[:id]
    av.venue_id = bv.id
    av.save
    redirect_to "/attendees/#{ params[:id] }"
  end

  def delete_venue
    av = AttendeeVenue.find_by(id: params[:av_id])
    av.destroy
    redirect_to "/attendees/#{ params[:id] }"
  end
  
  def destroy
    @attendee = Attendee.find_by(id: params[:id])
    @attendee.destroy


    redirect_to "/attendees"
  end
end
