class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy,:index,:show]

  def index
    @events = Event.where(user_id: current_user.id)
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_parameter)
    if @event.save
       redirect_to events_path
    else 
      render :new
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_parameter)
      redirect_to events_path
    else
      render :edit
    end
  end

  def destroy
    @event = Event.find(params[:id])
    if @event.destroy
      redirect_to events_path
    end
  end

  private

  def event_parameter
    params.require(:event).permit(:title, :content, :start_time).merge(user_id:current_user.id)
  end
end
