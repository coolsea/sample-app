module SessionsHelper
	def sign_in(user)
	    remember_token = User.new_remember_token
	    cookies.permanent[:remember_token] = remember_token
	    user.update_attribute(:remember_token, User.encrypt(remember_token))
	    self.current_user = user
	end

	#查看用戶目前是否是登入狀態？
	def signed_in?
		!current_user.nil?
	end


	def current_user=(user)
		@current_user = user
	end

	def current_user
		remember_token = User.encrypt(cookies[:remember_token])
		@current_user ||= User.find_by(remember_token: remember_token)
	end

	def current_user?(user)
		user == current_user
	end

	# sessions controller sign_out
	def sign_out
		current_user.update_attribute(:remember_token,
		                              User.encrypt(User.new_remember_token))
		self.current_user = nil
		cookies.delete(:remember_token)
	end


	#更友好的轉址
	def redirect_back_or(default)
		redirect_to(session[:return_to] || default)
		session.delete(:return_to)
	end

	def store_location
		session[:return_to] = request.fullpath if request.get?
	end

	#進行沒有權限操作時，必須要先登入
	def signed_in_user
	    store_location
	    redirect_to signin_url, notice: "Please sign in." unless signed_in?
	end

end
