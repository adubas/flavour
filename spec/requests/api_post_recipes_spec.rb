require "rails_helper"

describe "api post recipe" do
  it "successfuly" do
    params = { title: "Bolinho de chuva", recipe_type: "Sobremesa", cuisine: "Brasileira", difficulty: "Fácil",
               cook_time: 45, ingredients: "Farinha, água e áçucar", cook_method: "Misture tudo e frite" }
    response = Faraday.post("http://localhost:3000/api/v1/recipes", params)
  end
end
