require 'spec_helper'

describe "User pages" do

  subject { page }

  describe "signup page" do
    before { visit signup_path }

    it { should have_selector('body',    text: 'Sign up') }
    it { should have_selector('title', text: "Sample | Sign up") }
  end
end
