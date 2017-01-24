class BootsController < ApplicationController
	before_action :find_boot, only: [:show, :update, :edit, :destroy]
	def index

		@boots = Boot.all.order("created_at DESC")
		
	end

	def show
		
	end

	def new
		@post = Boot.new
	end

	def create
		@post = Boot.new(boots_params)		
	end

	def edit
		
	end

	def update
		
	end

	def destroy
		
	end

	private
		def find_boot
			@boot = Boot.find(params[:id])
		end

		def boots_params
			params.require(:boot).permit(:name, :company, :model, :size, :release)
		end

end
