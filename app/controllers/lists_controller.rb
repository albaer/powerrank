class ListsController < ApplicationController
  
  def show
    @list = List.find params[:id]
  end

  def index
    @lists = List.all
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
    @list = List.find params[:id]
  end

  def update
    @list = List.find params[:id]

    if @list.update(list_params)
      redirect_to list_path(@list)
    else
      render :edit
    end
  end

  private

  def list_params
    params.require(:list).permit(
      :title,
      items_attributes: [
        :id,
        :text,
        :description,
        :position,
        :_destroy
      ]
    )
  end

end
