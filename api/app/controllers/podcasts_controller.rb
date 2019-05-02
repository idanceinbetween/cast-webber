require 'unirest'

class PodcastsController < ApplicationController
  def index
    if index_popularity_category_default || index_popularity_category
      @podcasts = Category.find(params[:category]).podcasts.uniq.sort_by { |p| p.subscribers.size }.reverse
      @categories = Category.order(:name)
      @category = "in #{Category.find(params[:category]).name}"
      @cat_id = params[:category]
    elsif index_alphabetical_category
      @podcasts = Category.find(params[:category]).podcasts.order(:name)
      @categories = Category.order(:name)
      @category = "in #{Category.find(params[:category]).name}"
      @cat_id = params[:category]
    elsif index_alphabetical_all
      @podcasts = Podcast.order(:name)
      @categories = Category.order(:name)
      @category = nil
    elsif index_popularity_all_default || index_all_default
      @podcasts = Podcast.all.sort_by { |p| p.subscribers.size }.reverse
      @categories = Category.order(:name)
      @category = nil
    end
  end

  def query
    @p_response = Unirest.get "https://listen-api.listennotes.com/api/v2/curated_podcasts?page=1",
      headers:{
        "X-ListenAPI-Key" => "7ec60ebc8b274880a3ab6c9759b26cd6",
      }

    @p_id = @p_response.body.length
  end

  def show
    @podcast = Podcast.find(params[:id])
    @episodes = @podcast.episodes
    @categories = @podcast.categories
    @subscribers = @podcast.subscribers
    @user = current_user
  end

  def subscription
    podcast = Podcast.find(params[:id])
    current_user.toggle_subscription(podcast)
    redirect_to podcast
  end

  private
  def podcast_params
    params.require(:category).permit(:category)
  end

  def index_all_default
    params[:sort] == nil && params[:category] == nil
  end

  def index_popularity_all_default
    params[:sort] == "popular" && params[:category] == ""
  end

  def index_alphabetical_all
    params[:sort] == "alphabetical" && params[:category].to_s.length == 0
  end

  def index_popularity_category_default
    params[:sort] == nil && params[:category].to_s.length > 0
  end

  def index_popularity_category
    params[:sort] == "popular" && params[:category].to_s.length > 0
  end

  def index_alphabetical_category
    params[:sort] == "alphabetical" && params[:category].to_s.length > 0
  end
end
