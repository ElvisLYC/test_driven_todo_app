require 'rails_helper'

feature "User sess own todos" do
  scenario "doesn't see others' todos" do
    List.create!(title: "Buy bread", email: "elvis@coingecko.com")

    sign_in_as "elvis_1@coingecko.com"
    expect(page).not_to have_css ".todos li", text: "Buy bread"
  end
end
