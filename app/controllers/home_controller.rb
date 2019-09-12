class HomeController < ApplicationController
  def index
    response = Faraday.get 'http://localhost:3000/api/v1/recipes'

    @recipes = JSON.parse(response.body, symbolize_names: true)
  end
end
