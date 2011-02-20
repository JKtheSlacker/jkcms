class CommentsController < ApplicationController
  before_filter :find_post,
  :only => [:new, :create, :index, :show, :edit, :update, :destroy]
  before_filter :find_comment,
  :only => [:update, :destroy]
  def index
    @comments = @post.comments
  end

  def show
    @comments = @post.comments.find(params[:id])
  end

  def new
    @comment = @post.comments.build
  end
  
  def create
    @comment = @post.comments.build(params[:comment])
    if @comment.save
      redirect_to post_comment_url(@post, @comment)
    else
      render :action => "new"
    end
  end
  
  def edit
    @comment = @post.comments.find(params[:id])
  end
    
  def update
    if @comment.update_attributes(params[:comment])
      redirect_to post_comment_url(@post, @comment)
    else
      render :action => "edit"
    end
  end
  
  def destroy
    @comment.destroy
    
    respond_to do |format|
      format.html { redirect_to post_comments_path(@post) }
      format.xml {head :ok }
    end
  end

  private
  
  def find_post
    @post = Post.find(params[:post_id])
  end
  
  def find_comment
    @comment = Comment.find(params[:id])
  end
end
