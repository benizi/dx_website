require 'spec_helper'

describe "External pages" do

  describe "About page" do

    it "should have the content 'About'" do
      visit '/external_pages/About'
      expect(page).to have_content('About')
    end
  end

    describe "About page" do

    it "should have the content 'About'" do
      visit '/external_pages/About'
      expect(page).to have_content('About')
    end#it should have...
  end#describe About page

end #describe external pages