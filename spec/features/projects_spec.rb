require "rails_helper"

feature "projects" do
  scenario "user adds a new project" do
    description = <<-DESC
      A guide on connecting a liquid-crystal display
      to an Arduino. Code, schematics, and pictures
      are included.
    DESC

    visit root_path
    click_link "New Project"
    fill_in "Name", with: "Arduino LCD"
    fill_in "Description", with: description
    click_button "Add"
    expect(page).to have_content("New Project Added.")
  end
end
