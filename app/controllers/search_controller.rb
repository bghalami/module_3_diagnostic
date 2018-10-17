class SearchController < ApplicationController
  def index
    zip_code = params[:q]
    search = Search.new(zip_code)
  end
end
