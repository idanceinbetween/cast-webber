class KeywordsController < ApplicationController

  def index
    if params[:sort]
      @keywords = Keyword.order(:word)
    else
      @keywords = Keyword.all.sort_by{|k| k.episodes.count}.uniq.reverse
    end
  end

  def show
    @keyword = Keyword.find(params[:id])
    @episodes = @keyword.episodes
  end

  def create
    byebug
    @keyword = Keyword.find_by(word: params[:word])
    redirect_to @keyword
  end

  private

end
