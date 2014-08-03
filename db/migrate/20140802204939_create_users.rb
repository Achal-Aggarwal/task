class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :name
      t.string :email
      t.string :location
      t.string :blog
      t.string :company
      t.integer :studentId

      t.timestamps
    end
  end
end
