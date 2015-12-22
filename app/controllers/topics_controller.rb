class TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      redirect_to topics_url
    else
      render 'new'
    end
  end

  def upvote
    @topic= Topic.find(params[:id])
    if @topic.vote == nil

      @topic.vote = 0

    end
    @topic.vote += 1
    @topic.save
    redirect_to root_path
  end

  private

    def topic_params
      params.require(:topic).permit(:resolution)
    end
end
