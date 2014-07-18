class Admin::BlogsController < AdminController

  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      flash[:success] = "cool"
      redirect_to edit_admin_blog_path(@blog)
    else
      flash[:error] = @blog.errors.full_messages * ','
      render :new
    end
  end

  def update
    @blog = Blog.find(params[:id])
   
    if @blog.update(blog_params)
      redirect_to @blog
    else
      render :edit
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
   
    redirect_to blogs_path
  end

  protected
  def blog_params
    params.require(:blog).permit(:title, :photo)
  end
end
