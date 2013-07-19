require 'spec_helper'

describe "Member pages" do

	subject { page }

	describe "Profile page" do
		let(:member) { FactoryGirl.create(:member) }
		before { visit member_path(member) }

		it { should have_content(member.name) }
		it { should have_title(member.name) }
	end

	describe "register page" do
		before { visit register_path }

		it { should have_content('Register') }
		it { should have_title('Pitt Delta Chi - Register') }
	end

	describe "Register" do
		before { visit register_path }

		let(:submit) { "Submit for C's approval"}

		describe "with invalid information" do
			it "should not create a user" do
				expect { click_button submit }.not_to change(Member, :count)
			end
		end

		describe "with valid information" do
			before do
				fill_in "First Name",		with: "Peter"
				fill_in "Last Name",		with: "Schemerhorn Johnson"
				fill_in "Email Address",	with: "user@example.com"
				#fill_in "Peoplesoft Number",with: "3578411"
				fill_in "PAssword",			with: "foobar"
				fill_in "Re-type Password",	with: "foobar"
			end

			it "should create a user" do
				expect {click_button submit }.to change(Member, :count).by(1)
			end

			describe "after saving the user" do
		        before { click_button submit }
		        let(:member) { Member.find_by(email: 'user@example.com') }

		        it { should have_title(member.name) }
		        it { should have_content('The C is required to') }
      		end
		end
	end
end