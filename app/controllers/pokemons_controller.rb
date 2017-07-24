class PokemonsController < ApplicationController

  def index
    @q = Pokemon.ransack(params[:q])
    @pokemons = Pokemon.ransack(search_params).result
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
      :pokemon_abilities_default_true, :mega_effects_pokemon_id_null, s: [])
    if params.fetch(:q, {}).include?(:type_type_strength_types_strength_type_id_not_null)
      ret.merge!(type_type_strength_types_strength_type_id_eq: ret[:type_id_eq])
      ret.delete(:type_id_eq)
    end
    ret.merge!(s: ["dex asc", "id asc"]) if ret[:s].nil?
    ret
  end
end
