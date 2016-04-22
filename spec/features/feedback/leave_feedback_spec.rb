require "rails_helper"

feature "Leave a feedback" do
  background do
    visit root_path
    click_on "Leave a feedback"
    fill_in "Name", with: "John"
    fill_in "Text", with: "Hey there!"
    click_on "Отправить"
  end

  scenario "Feedback gets successfully submitted" do
    expect(page).to have_content("Your feedback has been submitted")
  end
end
