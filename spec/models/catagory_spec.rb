require 'rails_helper'

RSpec.describe Catagory, type: :model do
  it { should belong_to(:user) }
  it { should have_many(:catagory_expenses) }
  it { should have_many(:expenses).through(:catagory_expenses) }
end
