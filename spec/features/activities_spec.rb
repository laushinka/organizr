require 'rails_helper'

RSpec.feature "Creates activities", :type => :feature do
  scenario "User creates a new article" do
    visit "/"
    click_link "New Activity"

    fill_in "Title", with: "Creating first activity"
    fill_in "Description", with: "Nap all day"

    click_button "Create Activity"

    expect(page).to have_content("Activity has been created")
    expect(page.current_path).to eq(activities_path)
  end
end
