class PostsController < ApplicationController
    def new
    
    end
    def create 
        @topic = Topic.find(params[:topic_id])
        @post = @topic.posts.create(post_params)
        redirect_to @topic
    end
    private
        def post_params
            params.require(:post).permit(:title, :text)
        end
end


