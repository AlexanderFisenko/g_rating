class VotesController < ApplicationController
  before_action :set_vote, only: [:edit, :update]
  before_action :set_girl
  before_action :authenticate_user!

  def new
    @vote = Vote.new
  end

  def edit
  end

  def create
    @vote = Vote.new(vote_params)

    @vote.user_id = current_user.id
    @vote.girl_id = @girl.id

    if @vote.save
      redirect_to @girl, notice: 'A new slut was successfully created.'
    else
      render :new
    end
  end

  def update
    if @vote.update(vote_params)
      redirect_to @girl, notice: 'Value was successfully updated.'
    else
      render :edit
    end
  end


  private

    def set_vote
      @vote = Vote.find(params[:id])
    end

    def set_girl
      @girl = Girl.find(params[:girl_id])
    end

    def vote_params
      params.require(:vote).permit(:girl_id, :user_id, :value, :text)
    end
end
