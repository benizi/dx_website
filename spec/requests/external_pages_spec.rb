require 'spec_helper'

describe "External pages" do

	describe "Index page" do

    	it "should have the title 'Pitt Delta Chi - Welcome'" do
      		visit '/'
      		expect(page).to have_title('Pitt Delta Chi - Welcome')
    	end
  	end

  	describe "About page" do

    	it "should have the title 'Pitt Delta Chi - About'" do
      		visit '/about'
      		expect(page).to have_title('Pitt Delta Chi - About')
    	end
  	end

    describe "Alumni page" do

    	it "should have the title 'Pitt Delta Chi - Alumni'" do
      		visit '/alumni'
      		expect(page).to have_title('Pitt Delta Chi - Alumni')
    	end#it should have...
  	end#describe Alumni page

  	describe "Brothers page" do

    	it "should have the title 'Pitt Delta Chi - Brothers'" do
      		visit '/brothers'
      		expect(page).to have_title('Pitt Delta Chi - Brothers')
    	end#it should have...
  	end#describe Brothers page

  	describe "Contact page" do

    	it "should have the title 'Pitt Delta Chi - Contact'" do
      		visit '/contact'
      		expect(page).to have_title('Pitt Delta Chi - Contact')
    	end#it should have...
  	end#describe contact page

  	describe "Rush page" do

    	it "should have the title 'Pitt Delta Chi - Rush'" do
      		visit '/rush'
      		expect(page).to have_title('Pitt Delta Chi - Rush')
    	end#it should have...
  	end#describe Rush page

end #describe external pages