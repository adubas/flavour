require "rails_helper"

describe "api requests recipes" do
  it "successfuly" do
    response = Faraday.get 'http://localhost:3000/api/v1/recipes'

    json_recipes = JSON.parse(response.body, symbolize_names: true)

    expect(response.status).to eq 202
    expect(json_recipes[0][:title]).to eq "Pierogui"
    expect(json_recipes[1][:title]).to eq "Chocolate quente"
    expect(json_recipes[2][:title]).to eq "Bolo de cenoura"
    expect(json_recipes).not_to include "Pizza"
  end

  it "by the id" do
    response = Faraday.get 'http://localhost:3000/api/v1/recipes/1'

    json_recipe = JSON.parse(response.body, symbolize_names: true)

    expect(response.status).to eq 202
    expect(json_recipe[:title]).to eq "Pierogui"
    expect(json_recipe[:title]).not_to eq "Chocolate quente"
  end

  it "but get's an error message" do
    response = Faraday.get 'http://localhost:3000/api/v1/recipes/35'

    expect(response.status).to eq 404
    expect(response.body).to include "Receita não encontrada"
    expect(response.body).not_to include "Pierogui"
  end
end
