class SongsController < ApplicationController
    def index
        render json: Song.all
    end
    
    def create
        song = Song.create(song_params)
        render json: song
    end
    
    def destroy
        Song.destroy(params[:id])
    end
    
    def update
        song = Song.find(params[:id])
        song.update_attributes(song_params)
        render json: song
    end
    
    private
    def song_params
        params.require(:song).permit(:name, :artist, :party_id)
    end
end
