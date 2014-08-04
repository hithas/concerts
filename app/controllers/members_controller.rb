class MembersController < ApplicationController

  def index
    @members = Member.all
  end

  def show
    @member = Member.find_by(id: params[:id])
  end

  def new
  end

  def create
    @member = Member.new
    @member.name = params[:name]
    @member.age = params[:age]
    @member.picture = params[:picture]
    @member.band_id = params[:band_id]
    

    if @member.save
      redirect_to "/members/#{ @member.id }"
    else
      render 'new'
    end
  end

  def edit
    @member = Member.find_by(id: params[:id])
  end

  def update
    @member = Member.find_by(id: params[:id])
    @member.name = params[:name]
    @member.age = params[:age]
    @member.picture = params[:picture]
    @member.band_id = params[:band_id]

    if @member.save
      redirect_to "/members/#{ @member.id }"
    else
      render 'edit'
    end
  end

  def destroy
    @member = Member.find_by(id: params[:id])
    @member.destroy


    redirect_to "/members"
  end
end
