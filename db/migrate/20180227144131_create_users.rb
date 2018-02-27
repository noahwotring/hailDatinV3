class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :about
      t.integer :age
      t.string :location

      t.timestamps
    end
  end
end
