require 'spec_helper'

describe "Static pages" do

  subject { page }


it "should have the right links on the layout" do
    visit root_path
    click_link "about"
    expect(page).to have_title(full_title('about Us'))
    click_link "Help"
    expect(page).to have_title(full_title('Help'))
    click_link "contact"
    expect(page).to have_title(full_title('contact Us'))
    click_link "Home"
    click_link "Sign up now!"
    expect(page).to have_title(full_title('Sign up'))
  end


  

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Samapp') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_content('Help') }
    it { should have_title(full_title('Help')) }
  end

  describe "about page" do
    before { visit about_path }

    it { should have_content('about') }
    it { should have_title(full_title('about Us')) }
  end

  describe "contact page" do
    before { visit contact_path }

    it { should have_content('contact') }
    it { should have_title(full_title('contact')) }
  end
end
