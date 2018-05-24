class AvatarsController < ApplicationController
	def index
		if user_signed_in?
  		@avatar = Avatar.where user_id: current_user.id
  		end
	end

	def new 
		@avatar = Avatar.new
	end

	def create
		@avatar = current_user.avatar.new avatar_params

		if @avatar.save
			return redirect_to home_index_path
		end

		render :new
	end

	private

	def avatar_params
		params.require(:avatar).permit(:avatar)
	end
	
end
