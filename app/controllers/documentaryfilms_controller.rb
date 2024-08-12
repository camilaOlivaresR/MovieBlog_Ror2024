class DocumentaryfilmsController < ApplicationController
  def index
    @documentaryfilms = Documentaryfilm.all
  end

  def create
    @documentaryfilm = Documentaryfilm.new(documentaryfilm_params)
    if @documentaryfilm.save
      redirect_to documentaryfilms_index_path
    else
      render :new
    end
  end

  def new
    @documentaryfilm = Documentaryfilm.new
  end

  def documentaryfilm_params
    params.require(:documentaryfilm).permit(:name, :synopsis, :director)
   end
end
