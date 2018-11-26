class GuestsController < ApplicationController
    def index
        render json: Guest.all
    end

    def show
        render json: guest
    end
    
    def create
        guest = Guest.find_or_create_by(guest_params)
        party_guest = PartyGuest.create(guest_id: guest.id, party_id: params[:party_id])
        
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
