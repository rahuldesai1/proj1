class PokemonsController < ApplicationController

	def capture
		pokemon = Pokemon.find(params[:id])
		pokemon.trainer_id = current_trainer.id
		pokemon.save
		redirect_to root_path
		return
	end

	def damage
		pokemon = Pokemon.find(params[:id])
		pokemon.health -= 10
		pokemon.save
		trainer_id = pokemon.trainer.id
		if pokemon.health <= 0
			pokemon.destroy
		end
		redirect_to trainer_path(id: trainer_id)
		return 
  	end

  	def create_poke
		@new_pokemon = Pokemon.new(poke_params)
		@new_pokemon.trainer_id = current_trainer.id
		@new_pokemon.health = 100
		@new_pokemon.level = 1
		@new_pokemon.save
		if not @new_pokemon.valid?
			redirect_to new_path
			return 
		end

		redirect_to trainer_path(id: current_trainer.id)
		return
	end

	def poke_params
		params.require(:Pokemon).permit(:name, :ndex)
	end



end