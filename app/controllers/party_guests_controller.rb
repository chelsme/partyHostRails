class PartyGuestsController < ApplicationController
    def index
        render json: PartyGuest.all
    end

    def show
        party_guest = PartyGuest.find(params[:id])
        render json: party_guest
    end
    
    def create
        party_guest = PartyGuest.create(party_guest_params)
        render json: party_guest
    end
    
    def destroy
        PartyGuest.destroy(params[:id])
    end
    
    def update
        party_guest = PartyGuest.find(params[:id])
        part_guesty.update_attributes(party_guest_params)
        render json: party_guest
    end
    
    private
    def party_guest_params
        params.require(:party_guest).permit(:party_id, :guest_id)
    end
end
