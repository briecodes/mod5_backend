class Api::V1::UserEventsController < ApplicationController
    before_action :find_user_event, only: [:update, :show, :destroy]
    before_action :requires_login, only: [:index, :show, :create, :update, :destroy]
    
    def index
        @user_events = UserEvent.all
        render json: @user_events
    end

    def show
        render json: @user_events
    end

    def create
        user_event = UserEvent.new(user_event_params)
        if user_event.save
            render json: user_event, status: :accepted
        else
            render json: {errors: user_event.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def update
        @user_event.update(user_event_params)
        if @user_event.save
            render json: @user_event, status: :accepted
        else
            render json: {errors: @user_event.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def destroy
        @user_events.destroy
        render json: {status: 'Deleted!'}
    end

    private
        def user_event_params
            params.permit(:user_id, :event_id)
        end

        def find_user_event
            @user_events = UserEvent.find(params[:id])
        end
end
