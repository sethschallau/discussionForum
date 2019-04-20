class TopicsController < ApplicationController
    def new

    end

    def create
        @topic = Topic.new(topic_params)

        @topic.save
        redirect_to @topic
    end

    def edit
        @topic = Topic.find(params[:id])
    end

    def update
        @topic = Topic.find(params[:id])

        
            render 'edit'
    end

    def destroy
        @topic = Topic.find(params[:id])
        @topic.destroy

        redirect_to topics_path
    end

    def show
        @topic = Topic.find(params[:id])
    end

    def index
        @topics = Topic.all
    end
    

end

private
    def topic_params
        params.require(:topic).permit(:name, :description, :isModerated)
    end

