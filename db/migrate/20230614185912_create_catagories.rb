class CreateCatagories < ActiveRecord::Migration[7.0]
  def change
    create_table :catagories do |t|
      t.string :name
      t.string :string
      t.string :icon
      t.string :text

      t.timestamps
    end
  end
end
