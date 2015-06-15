require "rails_helper"

feature "parts" do
  let(:project) { create(:project) }

  scenario "user adds a part" do
    visit project_path(project)
    click_link "Add a part"
    fill_in "Part number", with: "ATTINY85-20PU"
    fill_in "Name", with: "Atmel ATTiny85"
    fill_in "Description",
      with: "High Performance, Low Power AVR 8-bit Microconrtoller"
    fill_in "Datasheet URL",
      with: "http://www.atmel.com/images/atmel-2586-avr-8-bit-microcontroller-attiny25-attiny45-attiny85_datasheet.pdf"
    click_button "Add"
    expect(page).to have_content("New Part Added.")
  end
end
