require 'spec_helper'

describe "StaticPages" do
 

	describe "首頁 static_pages/home" do
		  before {visit root_path} 

		  it "首頁頁面內容要含有'Sample App'" do
		    expect(page).to have_content('Sample App')
		  end

		  it "首頁頁面標題要含有'Ruby on Rails | Home'" do
		    expect(page).to have_title('Ruby on Rails')
		  end

	end

	describe "幫助頁面 static_pages/help" do
		before {visit '/help'} 

		  it "幫助頁面首頁要含有'Help Me'" do
		    expect(page).to have_content('Help Me')
		  end

		  it "幫助頁面標題要含有'Ruby on Rails | Help'" do
		    expect(page).to have_title('Ruby on Rails | Help')
		  end
	end

	describe "關於我頁面 static_pages/about" do
		before {visit '/about'} 

		it "關於我頁面要含有'About Me'" do
		  expect(page).to have_content('About Me')
		end

		it "首頁頁面標題要含有'Ruby on Rails | About'" do
		  expect(page).to have_title('Ruby on Rails | About')
		end
	end

	describe "聯絡我 static_pages/contact" do
		before {visit '/contact'} 

		it "首頁頁面標題要含有'Ruby on Rails | Contact'" do
		  expect(page).to have_title('Ruby on Rails | Contact')
		end
	end


end
