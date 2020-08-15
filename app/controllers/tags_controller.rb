class TagsController < ApplicationController
  before_action :search_tag, only: [:index, :search]

  def index
    @tags = Tag.all 
    set_tag_column
  end

  def search
   
    @results = @p.result 
  end

  private

  def search_tag
    @p = Tag.ransack(params[:q]) 
  end
  def set_tag_column
    @tag_name = Tag.select("tag_name").distinct  
   end
end
