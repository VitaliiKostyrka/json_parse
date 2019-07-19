class SearchController < ApplicationController
  def index
    json = read_json
    @data = json.nil? ? "error" : json

  end

  private

  def read_json
    File.read(File.join(File.expand_path(Rails.root), '/public/data.json'))
  end
end
