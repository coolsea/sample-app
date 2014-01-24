require 'spec_helper'

	describe User do 
		before {@user = User.new(name: "coolsea", email: "wei_918@coolsea.net")}

		subject {@user}	

		it {should respond_to(:name)}
		it {should respond_to(:email)}
	

end
