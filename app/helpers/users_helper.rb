module UsersHelper

	#使用gravatar服務，來顯示頭像，email地址會經過加密，然後再來獲取頭像
	def gravatar_for(user, options = {size: 50})
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
		size = options[:size]
		gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}.png?s=#{size}"
		image_tag(gravatar_url, alt: user.name, class: "gravatar")
	end
end
