class SessionsController < ApplicationController

    def new
        #render login page
    end

    def create
        puts 'login user'
        redirect_to '/sessions/new'
    end

    def destroy
    
    end
end
