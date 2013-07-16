require 'spec_helper'

describe Member do

	before { @member = Member.new(first: "Example", last: "Member", email: "foo@bar.com", status: "active")}

	subject { @member }

	it { should respond_to(:first) }
	it { should respond_to(:last) }
	it { should respond_to(:email) }
	it { should respond_to(:phone) }
	it { should respond_to(:carrier) }
	it { should respond_to(:peoplesoft) }
	it { should respond_to(:two_p) }
	it { should respond_to(:address) }
	it { should respond_to(:status) }

	it { should be_valid }

	describe "when first name is not present" do
		before { @member.first = " " }
		it { should_not be_valid }
	end

	describe "when last name is not present" do
		before { @member.last = " " }
		it { should_not be_valid }
	end

	describe "when email is not present" do
		before { @member.email = " "}
		it { should_not be_valid }
	end

	describe "when status is not present" do
		before { @member.status = " "}
		it { should_not be_valid }
	end

end #end Member