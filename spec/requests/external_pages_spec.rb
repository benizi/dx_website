require 'spec_helper'

describe "ExternalPages" do
  
  describe "About Page" do
    it "should have the title 'About'" do
    	visit 'static_pages/home'
    	expect(page).to have_content
    end

    describe "Alumni Page"
    	it "should have the title 'Alumni'"
    	visit 'static_pages/alumni'
  	end

end