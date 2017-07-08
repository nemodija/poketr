class PokemonsController < ApplicationController

  def index
    @all_abilities = params.
      try(:fetch, :ex_q, ActionController::Parameters.new).
      try(:fetch, :all_abilities, false)
    @q = Pokemon.ransack(params[:q])
    if @all_abilities && params[:q].fetch(:default_ability_id_eq).present?
      q_param = params[:q].dup
      q_param.store(:abilities_id_in, [q_param[:default_ability_id_eq]])
      q_param.delete(:default_ability_id_eq)
      q = Pokemon.ransack(q_param)
      @pokemons = q.result
    else
      @pokemons = @q.result
    end

    respond_to do |format|
      format.html do
        @pokemons = @pokemons.page(params[:page])
      end
      format.csv { send_data @pokemons.to_csv }
    end
  end
end
