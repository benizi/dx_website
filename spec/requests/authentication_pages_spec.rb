require 'spec_helper'

describe "Authentication" do
	subject { page }

  	describe "signin" do
  		before { visit signin_path }

  		describe "with invalid information" do
  			before { click_button "Sign in"}

  			it { should have_title('Sign in') }
  			it { should have_selector('div.alert.alert-error', text: 'Invalid') }

        describe "after visiting another page" do
          before {click_link "Home"}
          it {should_not have_selector('div.alert.alert-error')}
        end
  		end

  		describe "with valid information" do
  			let(:member) { FactoryGirl.create(:member) }
  			before do
  				fill_in "Email", with: member.email.upcase
  				fill_in "Password", with: member.password
  				click_button "Sign in"
  			end

  			it { should have_title(member.name) }
  			it { should have_link('Profile', href: member_path(member)) }
  			it { should have_link('Sign out', href: signout_path) }
  			it { should_not have_link('Sign in', href: signin_path) }
  		end
  	end
end