class BlogsController < ApplicationController
  before_action :authenticate_user!
  before_action :move_to_index, only: [:edit, :show, :destroy]

  def index
      @blogs = Blog.all
      @blog = Blog.new
  end
  
  def new
    @blog = Blog.new
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def create
    @blog = Blog.new(blog_parameter)
    if @blog.save
      redirect_to blogs_path
    else
      redirect_to root_path
    end
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    redirect_to blogs_path, notice:"削除しました"
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])
    if @blog.update(blog_parameter)
      redirect_to blogs_path, notice: "編集しました"
    else
      render 'edit'
    end
  end


  def today
    @blogs = Blog.where( start_time: Date.today .. Date.tomorrow)
  end

  private

  def blog_parameter
    params.require(:blog).permit(:title, :content, :start_time).merge(user_id: current_user.id)
  end

  def move_to_index
    blog = Blog.find(params[:id])
    redirect_to action: :index if blog.user_id != current_user.id
  end

end
