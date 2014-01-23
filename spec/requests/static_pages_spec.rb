require 'spec_helper'

describe "StaticPages" do
 
	describe "首頁 static_pages/home" do

	  it "首頁頁面內容要含有'Sample App'" do
	    visit '/static_pages/home'
	    expect(page).to have_content('Sample App')
	  end
	end

	describe "首頁 static_pages/home" do

	  it "首頁頁面標題要含有'Ruby on Rails | Home'" do
	    visit '/static_pages/home'
	    expect(page).to have_title('Ruby on Rails | Home')
	  end
	end

	describe "幫助頁面 static_pages/help" do

	  it "幫助頁面首頁要含有'Help Me'" do
	    visit '/static_pages/help'
	    expect(page).to have_content('Help Me')
	  end
	end

	describe "幫助頁面 static_pages/help" do

	  it "幫助頁面標題要含有'Ruby on Rails | Help'" do
	    visit '/static_pages/help'
	    expect(page).to have_title('Ruby on Rails | Help')
	  end
	end

	describe "關於我頁面 static_pages/about" do

	  it "關於我頁面要含有'About Me'" do
	    visit '/static_pages/about'
	    expect(page).to have_content('About Me')
	  end
	end

	describe "關於我 static_pages/about" do

	  it "首頁頁面標題要含有'Ruby on Rails | About'" do
	    visit '/static_pages/about'
	    expect(page).to have_title('Ruby on Rails | About')
	  end
	end

end
