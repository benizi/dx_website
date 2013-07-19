FactoryGirl.define do
	factory :member do
		first					"Peter"
		last					"Schemerhorn Johnson"
		email					"user@example.com"
		status					"active"
		password				"foobar"
		password_confirmation	"foobar"
	end
end