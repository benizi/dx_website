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

	describe "when first name is too long" do
		before { @member.first = 'a' * 51 }
		it { should_not be_valid }
	end

	describe "when last name is too long" do
		before { @member.last = 'a' * 51 }
		it { should_not be_valid}
	end

	describe "when email format is invalid" do
		it "should be invalid" do
			addresses = %w[user@foo,com user_at_foo.org example.user@foo.
                     foo@bar_baz.com foo@bar+baz.com]
		
			addresses.each do |invalid_address|
				@member.email = invalid_address
				expect(@member).not_to be_valid
			end
		end #end it
	end #end describe

	describe "when email format is valid" do
		it "should be valid" do
			addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
			addresses.each do |valid_address|
				@member.email = valid_address
				expect(@member).to be_valid
			end
		end #end it
	end #end describe

	describe "when email address is already taken" do
		before do
			member_with_same_email = @member.dup
			member_with_same_email.email = @member.email.upcase
			member_with_same_email.save		
		end

		it { should_not be_valid }
	end

end #end Member