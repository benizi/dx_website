require 'spec_helper'

describe "External pages" do

	describe "Index page" do

    	it "should have the content 'Index'" do
      		visit '/'
      		expect(page).to have_content('index')
    	end
  	end

  	describe "About page" do

    	it "should have the content 'About'" do
      		visit '/about'
      		expect(page).to have_content('About')
    	end
  	end

    describe "About page" do

    	it "should have the content 'Alumni'" do
      		visit '/alumni'
      		expect(page).to have_content('Alumni')
    	end#it should have...
  	end#describe About page

end #describe external pages