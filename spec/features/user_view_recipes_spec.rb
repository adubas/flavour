require "rails_helper"

feature "user view recipes" do
  scenario "successufully" do
    visit root_path

    expect(page).to have_css("h1", text: "Flavour")
    expect(page).to have_css("h3", text: "Pierogui")
  end
end
