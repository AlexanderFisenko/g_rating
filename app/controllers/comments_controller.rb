class CommentsController < ApplicationController

  before_action :authenticate_user!

  def create
    @comment = Comment.new(comment_params)
    @comment.update user_id: current_user.id

    if @comment.save
      redirect_to girl_path(@comment.girl), notice: 'A new comment was successfully created.'
    end
  end


  private
    def comment_params
      params.require(:comment).permit(:text, :girl_id)
    end
end
