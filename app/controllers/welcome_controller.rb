class WelcomeController < ApplicationController
  def index
    @topics = Topic.all
  end
end
