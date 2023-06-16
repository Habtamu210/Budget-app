require 'rails_helper'

RSpec.feature 'Catagories', type: :feature do
  before :each do
    @user = User.create(name: 'Habt Bir', email: 'habtamubirru15@gmail.com', password: '123456')
    @catagory = Catagory.create(user: @user, name: 'sind',
                                icon: 'https://www.flaticon.com/svg/static/icons/svg/3144/3144456.svg')

    visit root_path
    click_link 'Log In'

    within('#new_user') do
      fill_in 'user_email', with: 'habtamubirru15@gmail.com'
      fill_in 'user_password', with: '123456'
    end
    click_button 'Log in'
  end

  it 'visits catagories page' do
    expect(current_path).to match catagories_path
    expect(page).to have_content 'sind'
  end
end
