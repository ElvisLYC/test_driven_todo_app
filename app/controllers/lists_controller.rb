class ListsController < ApplicationController
  before_action :authenticate

  def index
    @lists = List.where(email: session[:current_email])
  end

  def new
    @list = List.new
  end

  def create
    List.create(list_params.merge(email: session[:current_email]))
    redirect_to lists_path
  end

  private

  def list_params
    params.require(:list).permit(:title)
  end
end
