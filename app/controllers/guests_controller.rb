class GuestsController < ApplicationController
    def index
        render json: Guest.all
    end
    
    def create
        guest = Guest.create(guest_params)
        render json: guest
    end
    
    def destroy
        Guest.destroy(params[:id])
    end
    
    def update
        guest = Guest.find(params[:id])
        guest.update_attributes(guest_params)
        render json: guest
    end
    
    private
    def guest_params
        params.require(:guest).permit(:name, :username, :password, :picture)
    end
end
