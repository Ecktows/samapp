require 'spec_helper'
describe "Static pages" do

describe "Home page" do
    it "should have the content 'Samapp'" do
      visit '/static_pages/home'
      expect(page).to have_content('Samapp')
   end
    it "should have the right title 'Home" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Samapp | Home")
   end
end
describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
     it "should have the right title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("Ruby on Rails Tutorial Samapp | Help")
end
  end
describe "about page" do

    it "should have the content 'about Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('about Us')
    end
    it "should have the right title 'about us" do
      visit '/static_pages/about'
      expect(page).to have_title("Ruby on Rails Tutorial Samapp | about us")
end
  end
end
