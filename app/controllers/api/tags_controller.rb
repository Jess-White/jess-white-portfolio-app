class Api::TagsController < ApplicationController

  before_action :authenticate_user, except: [:index]

  def index
    @tags = Tag.all
    render "index.json.jb"
  end

  def show
    @tag = Tag.find(params[:id])
    render "show.json.jb"
  end
  
end
