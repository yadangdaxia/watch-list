class ListsController < ApplicationController
  def index
    @lists = List.all
    # @movies = Movie.all
  end
  def show
    @list = List.find(params[:id])
  end
  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def edit
    @list = List.find(params[:id])
  end
  def destroy
    @list = List.find(params[:id])
    @list.destroy
  end

  private

    def list_params
      params.require(:list).permit(:name)
    end

end
