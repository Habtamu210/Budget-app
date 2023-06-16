require 'rails_helper'

RSpec.describe CatagoryExpense, type: :model do
  it { should belong_to(:catagory) }
  it { should belong_to(:expense) }
end
