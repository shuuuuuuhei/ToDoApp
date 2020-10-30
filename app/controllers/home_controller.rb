class HomeController < ApplicationController
    
    def index
        render 'devise/confirmation/new'
    end

    def show
    end
end