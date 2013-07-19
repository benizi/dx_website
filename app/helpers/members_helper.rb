module MembersHelper
	#Returns the Gravatar for the given user
	def gravatar_for(member)
		gravitar_id = Digest::MD5::hexdigest(member.email.downcase)
		gravatar_url = "https://secure.gravatar.com/avatar/#{gravitar_id}"
		image_tag(gravatar_url, alt: member.name, class: "gravatar")
	end
end