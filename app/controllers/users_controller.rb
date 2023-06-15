class UsersController < ApplicationController
  before_action :set_expense, only: %i[edit update destroy]
  before_action :set_catagory, only: %i[index new edit create update destroy]
  before_action :set_user, only: %i[index edit create update destroy]
  # GET /expenses or /expenses.json
  def index
    @expenses = @catagory.expenses.order(created_at: :desc)
  end

  # GET category/expenses/new
  def new
    @expense = Expense.new
  end

  # GET category/expenses/1/edit
  def edit; end

  # POST category/expenses
  def create
    @expense = Expense.new(**expense_params)
    @expense.user = current_user
    if @expense.save
      @category_expense = CatagoryExpense.create(catagory: @catagory, expense: @expense)
      redirect_to catagory_expenses_url(@catagory), notice: 'Expense was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT category/expenses/1
  def update
    if @expense.update(expense_params)
      redirect_to catagory_expenses_url, notice: 'Expense was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE category/expenses/1
  def destroy
    @expense.destroy
    redirect_to catagory_expenses_url(@catagory), notice: 'Expense was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = current_user
  end

  def set_catagory
    @catagory = set_user.catagories.find(params[:catagory_id])
  end

  def set_expense
    @expense = set_user.expenses.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def expense_params
    params.require(:expense).permit(:name, :amount)
  end
end
