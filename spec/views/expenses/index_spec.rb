require 'rails_helper'

RSpec.feature 'Expenses', type: :feature do
  before :each do
    @user = User.create(name: 'hab ab', email: 'hab@ab', password: '123456')
    @catagory = Catagory.create(user: @user, name: 'hab',
                                icon: 'https://www.flaticon.com/svg/static/icons/svg/3144/3144456.svg')
    @transaction = Expense.create(user: @user, name: 'Tomato Soup', amount: 10, catagories: [@catagory])

    visit root_path
    click_link 'Log In'

    within('#new_user') do
      fill_in 'user_email', with: 'hab@ab'
      fill_in 'user_password', with: '123456'
    end
    click_button 'Log in'
    visit catagory_expenses_path(@catagory)
  end

  it 'visits categories page' do
    expect(page).to have_content 'Transactions'
  end

  it 'should have total transactions price' do
    expect(page).to have_content "$#{@transaction.amount}"
  end
end
