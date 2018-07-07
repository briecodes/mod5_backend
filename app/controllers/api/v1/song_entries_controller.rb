class Api::V1::SongEntriesController < ApplicationController
    before_action :find_song_entry, only: [:update, :show, :destroy]
    before_action :requires_login, only: [:index, :show, :create, :update, :destroy]

    def index
        @song_entries = SongEntry.all
        render json: @song_entries
    end

    def show
        render json: @song_entry
    end

    def create
        song_entry = SongEntry.new(song_entry_params)
        if song_entry.save
            render json: song_entry, status: :accepted
        else
            render json: {errors: song_entry.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def update
        @song_entry.update(song_entry_params)
        if @song_entry.save
            render json: @song_entry, status: :accepted
        else
            render json: {errors: @song_entry.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def destroy
      @song_entry.destroy
      render json: {status: 'Deleted!'}
    end

    private
        def song_entry_params
            params.permit(:user_id, :event_id, :song_title, :song_artist, :video_url, :video_id, :order_number, :played, :passed)
        end

        def find_song_entry
            @song_entry = SongEntry.find(params[:id])
        end
end
