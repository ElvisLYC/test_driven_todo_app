require 'rails_helper'

feature "User visit homepage" do
  scenario "successfully" do
    visit root_path
    sign_in
    expect(page).to have_css 'h1', text: 'Todos'
  end
end
