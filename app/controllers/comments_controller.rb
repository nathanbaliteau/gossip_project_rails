class CommentsController < ApplicationController

  def create
    @gossip = Gossip.find(params[:gossip_id])
    @comment = Comment.new(content: params[:content], gossip_id: @gossip.id, user_id: params[:user])

    if @comment.save
      render 'gossips/show'
    end
  end

  def edit
    @gossip = Gossip.find(params[:gossip_id])
    @comment = Comment.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:gossip_id])
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      render 'gossips/show'
    else
      render :edit
    end
  end

  def destroy
    @gossip = Gossip.find(params[:gossip_id])
    @comment = Comment.find(params[:id])
    if @comment.destroy
      render 'gossips/show'
    end
  end

  private

  def comment_params
    params.permit(:content)
  end

end
