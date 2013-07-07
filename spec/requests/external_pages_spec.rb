require 'spec_helper'

describe "ExternalPages" do
  
	describe "About page"
		it "should have the content 'About'" do
			visit '/static_pages/home'
			expect(page).to have_content('About')
	end
end