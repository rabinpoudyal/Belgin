require 'spec_helper'

feature "user signs in successfully" do
	scenario "logs in from root project" do
		visit root_path
		click_link "Login"
		fill_in "email", with: "rabinpoudyal1995@gmail.com"
		fill_in "password", with: "password"
		click_button "Log in"
		page.should have_content "successfully"
	end
end