class NotesController < ApplicationController

  def create
    @note = Note.create(note_params)
    if @note
      flash[:notice] = "You have successfully added your note on this episode."
      redirect_to "/episodes/#{params[:note][:episode_id]}"
    else
      flash[:notice] = "Oops something went wrong."
      redirect_to "/episodes/#{params[:note][:episode_id]}"
    end
  end

  def edit
    if current_user.id != Note.find(params[:id]).user_id
      flash[:notice] = "Oops, you can't edit the note - it's not yours! Try something else instead?"
      redirect_to "/profile"
    else
      @note = Note.find(params[:id])
      @episode = Episode.find(@note.episode_id)
      @podcast = @episode.podcast
      @favouriters = @episode.favouriters
      @notes = @episode.notes
      @keywords = @episode.keywords
      @user = current_user
      if @episode.notes.size > 1
        @siblings = @episode.notes.select{|n| n != @note}
      end
    end
  end

  def update
    @note = Note.find(params[:id])
    @note.update(note_params)
    flash[:notice] = "Successfully updated your note on this episode."
    redirect_to "/episodes/#{params[:note][:episode_id]}"
  end

  def destroy
    note = Note.find(params[:id])
    note.destroy
    flash[:notice] = "Note successfully deleted"
    redirect_to profile_path
  end

  private

  def note_params
    params.require(:note).permit(:content, :episode_id, :user_id)
  end
end
