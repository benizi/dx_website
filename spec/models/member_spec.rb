require 'spec_helper'

describe Member do

	before { @member = Member.new(first: "Example", last: "Member", email: "foo@bar.com", phone: "5555555555")}

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

end