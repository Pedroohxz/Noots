class LownootsController < ApplicationController
    def index
        
        @nootas = Noot.where("(nota_mensal + nota_bimestral) /2 <= 6")
    end
    def edit
    end



end
