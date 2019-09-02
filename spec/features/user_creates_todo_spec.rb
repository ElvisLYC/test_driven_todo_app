require 'rails_helper'

feature "user creates todo" do
  scenario "successfully" do
    sign_in

    click_on "Add a new todo"
    fill_in "Title", with: "Learn Javascript"
    click_on "Submit"
    expect(page).to have_css '.todos li', text: 'Learn Javascript'
  end
end
