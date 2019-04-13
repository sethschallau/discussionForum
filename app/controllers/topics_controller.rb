class TopicsController < ApplicationController
    def new
    end
    def create
        @topics = Topics.new(topics_params)
        #byebug
        
         @topics.save
        redirect_to @topics
    end
    
    def show
        @topics = Topics.find(params[:id])
    end
end

private
    def topics_params
        params.require(:topics).permit(:name, :description)
    end
