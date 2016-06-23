class CreateCriteria < ActiveRecord::Migration
  def change
    create_table :criteria do |t|
      t.string :name
      t.integer :operator_id
      t.text :value

      t.timestamps null: false
    end
  end
end
