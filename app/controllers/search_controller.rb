class SearchController < ApplicationController
  def index
    @data = SearchService.new(params[:input], read_json).find if params[:input]
  end

  private

  def read_json
    File.read(File.join(File.expand_path(Rails.root), '/public/data.json'))
  end
end
