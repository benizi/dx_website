require 'spec_helper'

describe "External pages" do

	describe "Index page" do

    	it "should have the content 'Index'" do
      		visit '/'
      		expect(page).to have_content('Index')
    	end
  	end

  	describe "About page" do

    	it "should have the content 'About'" do
      		visit '/about'
      		expect(page).to have_content('About')
    	end
  	end

    describe "Alumni page" do

    	it "should have the content 'Alumni'" do
      		visit '/alumni'
      		expect(page).to have_content('Alumni')
    	end#it should have...
  	end#describe Alumni page

  	describe "Brothers page" do

    	it "should have the content 'Brothers'" do
      		visit '/brothers'
      		expect(page).to have_content('Brothers')
    	end#it should have...
  	end#describe Brothers page

  	describe "Contact page" do

    	it "should have the content 'Contact'" do
      		visit '/contact'
      		expect(page).to have_content('Contact')
    	end#it should have...
  	end#describe contact page

  	describe "Rush page" do

    	it "should have the content 'Rush'" do
      		visit '/rush'
      		expect(page).to have_content('Rush')
    	end#it should have...
  	end#describe Rush page

end #describe external pages