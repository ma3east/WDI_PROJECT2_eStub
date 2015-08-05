class EventsController < ApplicationController

  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :authenticate, only: [:new, :create, :show]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def edit
    redirect_to @event unless authenticate_user(@event.user)
  end

  def show
    if current_user && params[:action] == "user_events" ? render 'showUser' : render 'showNonUser'
    end
  end

  def create
    params[:event][:user_id] = current_user.id
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.'}
      else
        format.html {render :new }
      end
    end
  end

  def update
    redirect_to @event unless authenticate_user(@event.user)
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    redirect_to @event unless authenticate_user(@event.user)
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
    end
  end
  
  private
  def set_event
    @event = Event.find(params[:id])
  end

      # Never trust parameters from the scary internet, only allow the white list through.
      def event_params
        params.require(:event).permit(:name, :date, :venue, :city, :price, :stub_file_upload, :event_url, :rating, :accompanied_by, :description, :category_id, :user_id, :share)
      end


    end
