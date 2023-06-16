require 'rails_helper'

RSpec.describe Expense, type: :model do
  context 'Assocation' do
    it { should belong_to(:user) }
    it { should have_many(:catagory_expenses) }
    it { should have_many(:catagories).through(:catagory_expenses) }
  end
end
