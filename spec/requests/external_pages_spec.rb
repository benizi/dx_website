require 'spec_helper'

describe "External pages" do

  let(:base_title) { "Pitt Delta Chi -" }

	describe "Index page" do

    	it "should have the title 'Welcome'" do
      		visit '/'
      		expect(page).to have_title("#{base_title} Welcome")
    	end
  	end

  	describe "About page" do

    	it "should have the title 'About'" do
      		visit '/about'
      		expect(page).to have_title("#{base_title} About")
    	end
  	end

    describe "Alumni page" do

    	it "should have the title 'Alumni'" do
      		visit '/alumni'
      		expect(page).to have_title("#{base_title} Alumni")
    	end#it should have...
  	end#describe Alumni page

  	describe "Brothers page" do

    	it "should have the title 'Brothers'" do
      		visit '/brothers'
      		expect(page).to have_title("#{base_title} Brothers")
    	end#it should have...
  	end#describe Brothers page

  	describe "Contact page" do

    	it "should have the title 'Contact'" do
      		visit '/contact'
      		expect(page).to have_title("#{base_title} Contact")
    	end#it should have...
  	end#describe contact page

  	describe "Rush page" do

    	it "should have the title 'Rush'" do
      		visit '/rush'
      		expect(page).to have_title("#{base_title} Rush")
    	end#it should have...
  	end#describe Rush page

end #describe external pages