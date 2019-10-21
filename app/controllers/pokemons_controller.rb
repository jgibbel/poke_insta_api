class PokemonsController < ApplicationController
    def index
        pokemonIndexFile = File.read('pokemon.json')
        pokemonIndex = JSON.parse(pokemonIndexFile)
        render json: pokemonIndex
    end

    def show
        @pokemon = Pokemon.find_by(id: params[:id])
        render json: @pokemon
    end
end
