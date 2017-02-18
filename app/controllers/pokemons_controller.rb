class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.all

    respond_to do |format|
      format.html
      format.csv { send_data @pokemons.to_csv }
    end
  end
end
