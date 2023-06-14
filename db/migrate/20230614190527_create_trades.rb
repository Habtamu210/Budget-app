class CreateTrades < ActiveRecord::Migration[7.0]
  def change
    create_table :trades do |t|
      t.string :name
      t.string :string
      t.string :amount
      t.string :integer

      t.timestamps
    end
  end
end
