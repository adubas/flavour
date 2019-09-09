require "rails_helper"

describe "api requests recipes" do
  it "successfuly" do
    response = Faraday.get 'http://localhost:3000/api/v1/recipes'

    json_recipe = JSON.parse(response.body, symbolize_names: true)

    expect(response.status).to eq 202
    expect(json_recipe[:title]).to eq 
  end
end
