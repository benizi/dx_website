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
end