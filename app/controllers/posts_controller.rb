class PostsController < ApplicationController
    def index
        @posts = Post.all
    end
    
    def show
        @post = Post.find(params[:id])
    end
    
    def new
        @post = Post.new
    end
    
    def create
        @post = Post.create(post_params)
        if @post.valid?
            redirect_to root_path
        else
            render :new
        end
    end
    
    def edit
        
    end
    
    def update
        @post = Post.find(params[:id])
        @post.update(post_params)
        if @post.valid?
            redirect_to root_path
        else
            render :edit
        end
    end
    
    def destroy
        
    end
    
    private
    
    def post_params
       params.require(:post).permit(:title, :author, :content) 
    end
end
