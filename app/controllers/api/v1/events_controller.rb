class Api::V1::EventsController < ApplicationController
  before_action :find_event, only: [:update, :show, :destroy]
  before_action :requires_login, only: [:index, :show, :create, :update, :destroy]

  def index
    @events = Event.all
    render json: @events
  end

  def show
    render json: @event
  end

  def create
    event = Event.new(event_params)
    if event.save
      render json: event, status: :accepted
    else
      render json: {errors: event.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def update
    @event.update(event_params)
    if @event.save
      render json: @event, status: :accepted
    else
      render json: {errors: @event.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def destroy
    @event.destroy
    render json: {status: 'Deleted!'}
  end

  private
      def event_params
        params.permit(:user_id, :title, :location, :description, :key_code, :active, :public)
      end

      def find_event
        @event = Event.find(params[:id])
      end
end
