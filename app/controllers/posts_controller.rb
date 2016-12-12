class PostsController < ApplicationController
    def index
        @posts = Post.all
        if params[:search]
            Post.search(params[:search]).order('created_at DESC')
        else
            Post.all.order('created_at DESC')
        end
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.create(post_params)

        respond_to do |format|
            if @post.save
                format.html { redirect_to post_path(@post), notice: 'Post saved successfully!' }
            else
                format.json { render json: @post }
            end
        end
    end

    def show
        @post = Post.find(params[:id])
        @comment = @post.comments.new
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy

        redirect_to action: :index
    end

    private

    def post_params
        params.require(:post).permit(:title, :body)
    end
end
