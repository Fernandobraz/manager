class CreateIncomes < ActiveRecord::Migration
  def change
    create_table :incomes do |t|
      t.float :value
      t.string :origin
      t.date :paymentDate
      t.text :extrainfo
      t.string :currency
      t.date :jobDate
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
