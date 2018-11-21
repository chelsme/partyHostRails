class PartiesController < ApplicationController
    def index
        render json: Party.all
    end
    
    def create
        party = Party.create(party_params)
        render json: party
    end
    
    def destroy
        Party.destroy(params[:id])
    end
    
    def update
        party = Party.find(params[:id])
        party.update_attributes(party_params)
        render json: party
    end
    
    private
    def party_params
        params.require(:party).permit(:name, :host_id, :date, :time, :location)
    end
end
