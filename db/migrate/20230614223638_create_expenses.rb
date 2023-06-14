class CreateExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :expenses do |t|
      t.string :name
      t.string :string
      t.string :amount
      t.string :integer

      t.timestamps
    end
  end
end
