class EventsController < ApplicationController

  def home 
    redirect_to new_session_path unless logged_in?
  end

  def index
  end

  def show
  end

  def new
  end

  def create
    @event = event.new(event_params)
    @event.save
      redirect_to root_path
  end

  def edit
  end

  def update
  end

  def destroy
    @event = event.find(params[:id])
    if @event.destroy
      redirect_to root_path
      flash[:alert] = "Event deleted"
    end
  end

  private
  def event_params
    params.require(:event).permit(:username, :email)
  end
end
