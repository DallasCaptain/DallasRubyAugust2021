class PalacesController < ApplicationController

    def index
        @palaces = Palace.all
    end

    def new
    
    end

    def show
        puts params
        @palace = Palace.find(params[:id])
    end
end
