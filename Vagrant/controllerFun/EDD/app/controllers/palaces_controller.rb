class PalacesController < ApplicationController
    layout 'puppies', except: [:show]

    def index
        @palaces = Palace.all
        
    end

    def new
    
    end

    def show
        puts params
        @palace = Palace.find(params[:id])
    end

    def create
        puts 'we made something'
        redirect_to palaces_path
    end
end
