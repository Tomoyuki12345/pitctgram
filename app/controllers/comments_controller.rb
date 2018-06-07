class CommentsController < ApplicationController
  def new
    @comments = Comment.new
  end
  def create
    @comments = Comment.new(params[:comments])
  if @comments.save
    redirect_to topics_path, notice: 'コメントの投稿が完了しました'
  else
    redirect_to topics_path, notice: 'コメントの投稿に失敗しました'
  end
  end
end
