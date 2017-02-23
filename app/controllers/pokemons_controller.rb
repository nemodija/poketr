class PokemonsController < ApplicationController
  def index
    @q = Pokemon.ransack(params[:q])
    @pokemons = @q.result(distinct: true)

    respond_to do |format|
      format.html
      format.csv { send_data @pokemons.to_csv }
    end
  end
end
