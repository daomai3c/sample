require 'spec_helper'

describe "Static Pages" do
  describe "Home page" do
    
    it "should have the content 'home'" do
      visit '/static_pages/home'
      page.should have_content('home')
    end
    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "Sample | Home")
    end
    it "should have the content 'home'" do
      visit '/static_pages/home'
      page.should have_selector('h1',:text => 'home')
    end
  end
  
  describe "Help page" do
    it "should have the content 'help'" do
      visit '/static_pages/help'
      page.should have_content('help')
    end
    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title',
                        :text => "Sample | Help")
    end
    it "should have the content 'help'" do
      visit '/static_pages/help'
      page.should have_selector('h1',:text => 'help')
    end
  end
  
  describe "About page" do
    it "should have the content 'about'" do
      visit '/static_pages/about'
      page.should have_content('about')
    end
  end
  
  describe "Contact page" do
    it "should have the content 'contact'" do
      visit '/static_pages/contact'
      page.should have_content('contact')
    end
  end
end