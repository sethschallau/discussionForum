class PostsController < ApplicationController
    def new
    
    end
    def create 
        @topic = Topic.find(params[:topic_id])
        @post = @topic.posts.create(post_params)
        redirect_to @topic
    end

    def destroy
        @topic = Topic.find(params[:topic_id])
        @post = @topic.posts.find(params[:id])
        @post.destroy
        redirect_to topic_path(@topic)
    end
    private
        def post_params
            params.require(:post).permit(:title, :text)
        end
end


