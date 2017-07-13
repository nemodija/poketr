class PokemonsController < ApplicationController

  def index
    @q = Pokemon.ransack(params[:q])
    @pokemons = @q.result

    respond_to do |format|
      format.html do
        @pokemons = @pokemons.page(params[:page])
      end
      format.csv { send_data @pokemons.to_csv }
    end
  end
end
