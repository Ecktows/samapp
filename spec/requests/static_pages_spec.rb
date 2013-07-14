require 'spec_helper'

describe "Static pages" do

  subject { page }

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
