require 'spec_helper'



describe "Static Pages" do
  
  subject { page }
  
  describe "Home page" do
    before { visit root_path } 

    it { should have_selector('h1', :text => 'Sample App') }
    it { should have_selector 'title',:text => "Sample | Home" }
    it "should have the right links on the layout" do
      visit root_path
      click_link "About"
      page.should have_selector 'title', text: "Sample | About"
      click_link "Help"
      page.should have_selector 'title', text: "Sample | Help"
      click_link "Contact"
      page.should have_selector 'title',text: "Sample | Contact"
      click_link "Home"
      page.should have_selector 'title', text: "Sample | Home"
      click_link "Sign up now!"
      page.should have_selector 'title', text: "Sample | Sign up"
      click_link "sample app"
      page.should have_selector 'title', text: "Sample | Home"
    end
  end
  
  describe "Help page" do
    before {visit help_path}
    it {should have_content('help')}
    it {should have_selector('title',:text => "Sample | Help")}
  end
  
  describe "About page" do
    before {visit about_path}
    it { should have_content('about')}
    it {should have_selector('title',:text => 'Sample | About')}
  end
  
  describe "Contact page" do
    before {visit contact_path}
    it {should have_selector('body', :text => 'contact')}
    it {should have_selector('title', :text => 'Sample | Contact')}
  end
end