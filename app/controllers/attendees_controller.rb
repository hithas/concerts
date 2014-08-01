class AttendeesController < ApplicationController

  def index
    @attendees = Attendee.all
  end

  def show
    @attendee = Attendee.find_by(id: params[:id])
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

  def destroy
    @attendee = Attendee.find_by(id: params[:id])
    @attendee.destroy


    redirect_to "/attendees"
  end
end
