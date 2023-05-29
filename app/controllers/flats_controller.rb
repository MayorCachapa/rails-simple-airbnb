class FlatsController < ApplicationController
    def index
        if params[:search].present?
            @flats = Flat.where("title LIKE ?", "%#{params[:search]}")
        else
            @flats = Flat.all
        end
    end
end
