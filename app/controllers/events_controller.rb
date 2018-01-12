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
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
