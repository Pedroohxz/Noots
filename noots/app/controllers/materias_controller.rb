class MateriasController < ApplicationController

    def index 
        @noot = Noot.new
        render layout: 'materias'
        
    end

    def new 
      @noot =  Noot.new

    end
    def create
      @noot = Noot.new(params[:noot])
      @noot.save
      redirect_to @noot
    end
end
