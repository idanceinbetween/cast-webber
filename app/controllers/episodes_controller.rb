class EpisodesController < ApplicationController

  def index
    if index_popularity_keyword_default || index_popularity_keyword
      @episodes = Keyword.find(params[:keyword]).episodes.uniq.sort_by { |p| p.favouriters.size }.reverse
      @keywords = Keyword.order(:word)
      @keyword = "tagged with '#{Keyword.find(params[:keyword]).word}'"
      @keyword_id = params[:keyword]
    elsif index_alphabetical_keyword
      @episodes = Keyword.find(params[:keyword]).episodes.order(:title)
      @keywords = Keyword.order(:word)
      @keyword = "tagged with #{Keyword.find(params[:keyword]).word}"
      @keyword_id = params[:keyword]
    elsif index_alphabetical_all
      @episodes = Episode.order(:title)
      @keywords = Keyword.order(:word)
      @keyword = nil
    elsif index_popularity_all_default || index_all_default
      @episodes = Episode.all.sort_by { |e| e.favouriters.size }.reverse
      @keywords = Keyword.order(:word)
      @keyword = nil
    end
  end

  def show
    @episode = Episode.find(params[:id])
    @podcast = @episode.podcast
    @favouriters = @episode.favouriters
    @notes = @episode.notes
    @note = Note.new
    @keywords = @episode.keywords
    @user = current_user
    if @podcast.episodes.size > 1
      @siblings = @podcast.episodes.select{|e| e != @episode}
    end
  end

  def favouritisation
    episode = Episode.find(params[:id])
    current_user.toggle_favouritisation(episode)
    redirect_to podcast_path(episode.podcast)
  end

  private
    def index_all_default
      params[:sort] == nil && params[:keyword] == nil
    end

    def index_popularity_all_default
      params[:sort] == "popular" && params[:keyword] == ""
    end

    def index_alphabetical_all
      params[:sort] == "alphabetical" && params[:keyword].to_s.length == 0
    end

    def index_popularity_keyword_default
      params[:sort] == nil && params[:keyword].to_s.length > 0
    end

    def index_popularity_keyword
      params[:sort] == "popular" && params[:keyword].to_s.length > 0
    end

    def index_alphabetical_keyword
      params[:sort] == "alphabetical" && params[:keyword].to_s.length > 0
    end
end
