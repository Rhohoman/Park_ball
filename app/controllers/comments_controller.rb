class CommentsController < ApplicationController

  def new
    @comment = Comment.new

  end

  def show
    @comment = Comment.find(params[:id])
  end

  def index
    @comments = Comment.all
  end

  def create
    @comment = Comment.create(comment_params)
    # byebug
    @comment.save
    limit_comments
    redirect_to game_path(@comment.game_id)
  end

  private

  def comment_params
    params.require(:comment).permit(:game_id,:content)
  end

  def limit_comments
    all_comments_array = []
    game_comments = Comment.where(game_id: @comment.game_id)

    game_comments.each do |comment|
      #for seeds push in with iteration

      if all_comments_array.length < 10

        all_comments_array.push(comment)
        #brings new comment to last element in array

      else

        all_comments_array.push(comment)
        #brings new comment to last element in array

        variable_destroy = all_comments_array.first.id
        first_comment = Comment.find(variable_destroy)

        first_comment.destroy

        destroy_comment = all_comments_array.shift
        #deletes first element

      end
    end

  end

end
