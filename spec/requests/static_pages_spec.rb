require 'spec_helper'

describe "Static Pages" do
  describe "Home page" do
    
    it "should have the content 'home'" do
      visit root_path
      page.should have_content('home')
    end
    it "should have the title 'Home'" do
      visit root_path
      page.should have_selector('title',
                        :text => "Sample | Home")
    end
  end
  
  describe "Help page" do
    it "should have the content 'help'" do
      visit help_path
      page.should have_content('help')
    end
    it "should have the title 'Help'" do
      visit help_path
      page.should have_selector('title',
                        :text => "Sample | Help")
    end
    it "should have the content 'help'" do
      visit help_path
      page.should have_selector('h1',:text => 'help')
    end
  end
  
  describe "About page" do
    it "should have the content 'about'" do
      visit about_path
      page.should have_content('about')
    end
  end
  
  describe "Contact page" do
    it "should have the content 'contact'" do
      visit contact_path
      page.should have_content('contact')
    end
  end
end