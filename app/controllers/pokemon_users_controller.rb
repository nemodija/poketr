class PokemonUsersController < ApplicationController

  def edit
    pokemon = Pokemon.find params[:id]
    @pokemon_user = PokemonUser.find_by(pokemon: pokemon, user: current_user) ||
      PokemonUser.new(pokemon: pokemon, user: current_user)
  end

  def create
    pokemon_user = PokemonUser.new(create_params)
    pokemon_user.save!
    @pokemon = pokemon_user.pokemon
  end

  def update
    pokemon_user = PokemonUser.find params[:id]
    pokemon_user.attributes = create_params
    pokemon_user.save! if pokemon_user.changed?
    @pokemon = pokemon_user.pokemon
  end

  def create_params
    params.require(:pokemon_user).permit(:pokemon_id, :level).merge(user: current_user)
  end
end
