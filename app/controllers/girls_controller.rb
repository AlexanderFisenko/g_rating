class GirlsController < ApplicationController
  before_action :set_girl, only: [:show, :edit, :update, :destroy]

  def index
    @girls = Girl.all
  end

  def show
  end

  def new
    @girl = Girl.new
  end

  def edit
  end

  def create
    @girl = Girl.new(girl_params)

    if @girl.save
      redirect_to @girl, notice: 'A new slut was successfully created.'
    else
      render :new
    end
  end

  def update
    if @girl.update(girl_params)
      redirect_to @girl, notice: 'Dem hoe was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @girl.destroy
    redirect_to girls_path, notice: "Damn, dude...You've just saved her soul!"
  end


  private

    def set_girl
      @girl = Girl.find(params[:id])
    end

    def girl_params
      params.require(:girl).permit(:name, :remote_photo_url, :remote_photo_url)
    end
end
