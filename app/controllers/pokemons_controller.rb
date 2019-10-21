class PokemonsController < ApplicationController

    def index 
        # pokemons = Pokemon.all  
        pokeIndexFile = File.read('pokemon.json')
        pokeIndex = JSON.parse(pokeIndexFile)
        render json: pokeIndex
    end 



    def show 
        pokemon = Pokemon.find(params[:id])
        render json: pokemon
    end 


end
