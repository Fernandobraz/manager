class CreateOutcomes < ActiveRecord::Migration
  def change
    create_table :outcomes do |t|
      t.float :value
      t.string :destiny
      t.date :paymentDate
      t.text :extrainfo
      t.string :currency
      t.boolean :taxReduce
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
