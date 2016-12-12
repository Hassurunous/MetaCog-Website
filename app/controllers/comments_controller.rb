class CommentsController < ApplicationController

    def index
        @comment = @post.Comment.all
    end

    def create
        @post = Post.find(params[:post_id])
        @comment = @post.comments.new(comment_params)

        if @comment.save
            redirect_to(@post)
            flash[:notice] = 'Comment saved successfully.'
        else
            redirect_to(@post)
            flash[:notice] = 'Comment could not be saved.'
        end
    end

    def destroy
        @post = Post.find(params[:post_id])
        @comment = @post.comments.find(params[:id])

        @comment.destroy

        redirect_to @post
    end

    private

    def comment_params
        params.require(:comment).permit(:body)
    end
end
