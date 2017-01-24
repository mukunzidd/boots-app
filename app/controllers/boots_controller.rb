class BootsController < ApplicationController
	def index
    @boots = Boot.all.order("created_at DESC")    
  end

  def show
    @recipe = Recipe.find_by(id: params[:id])
  end

  def new
    @boot = Boot.new

  end

  def create
    @boot = Boot.new(boot_params)
    if @boot.save
      redirect_to @boot
    else
      render 'new'
    end
  end

  def show
    @boot = Boot.find(params[:id])    
  end

  def edit
    @boot = Boot.find(params[:id])
    
  end
  def update
    @boot = Boot.find(params[:id])

    if @boot.update(boot_params)
      redirect_to @boot
    else
      render 'edit'
    end
  end

  def destroy
    @boot = Boot.find(params[:id])
    @boot.destroy
    redirect_to root_path       
  end

  private
    def boot_params
      params.require(:boot).permit(:name, :company, :size, :model, :release)
    end
end
