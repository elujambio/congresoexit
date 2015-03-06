class ConventionsController < ApplicationController
	def index
	end

	def new
		@convention = Convention.new
	end

	def create
		@convention = Convention.new(convention_params)

		if @convention.save
			flash[:notice] = "The Congress has been created."
			redirect_to @convention
		else
			flash[:error] = "The Congress could not be saved"
			render :action => "new"
		end
	end

	def show
		@convention = Convention.find(params[:id])
	end


	private 
		def convention_params
			params.require(:convention).permit(:name, :description, :initDate, :endDate, :place)
		end
end
