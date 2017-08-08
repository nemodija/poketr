class PokemonsController < ApplicationController

  def index
    @q = Pokemon.ransack(params[:q])
    @pokemons = Pokemon.with_user(current_user).
      ransack(search_params).result.order(order_str)
    respond_to do |format|
      format.html do
        @pokemons = @pokemons.page(params[:page])
      end
      format.csv { send_data @pokemons.to_csv }
    end
  end

  def search_params
    ret = params.fetch(:q, {}).permit(
      :name_cont, :type_id_eq, :pokemon_abilities_ability_id_eq,
      :pokemon_abilities_default_true, :mega_effects_pokemon_id_null)
    if params.fetch(:q, {}).include?(:type_type_strength_types_strength_type_id_not_null)
      ret.merge!(type_type_strength_types_strength_type_id_eq: ret[:type_id_eq])
      ret.delete(:type_id_eq)
    end
    ret
  end

  def order_str
    params.fetch(:q, {}).fetch(:s, ["dex asc", "id asc"]).join(",")
  end
end
