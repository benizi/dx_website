class Member < ActiveRecord::Base

	validates :first, presence: true
	validates :last, presence: true
	validates :email, presence: true
	validates :status, presence: true


end