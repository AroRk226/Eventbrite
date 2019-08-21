class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :new]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new()
  end

  def create
    @event = Event.new()
    hash_params = params.require(:event).permit(:duration,:title,:description,:price,:location,:start_date)
    @event = Event.new(hash_params)
    if @event.save
      redirect_to event_path(@event.id), success: "Evénnement créé avec succès"
    else
      render 'new'
    end
  end

  def show
  	@event = Event.find(params[:id])    
  end
  
end
