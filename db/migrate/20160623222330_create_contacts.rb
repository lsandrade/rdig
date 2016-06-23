class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.integer :age
      t.string :uf
      t.string :job

      t.timestamps null: false
    end
  end
end
