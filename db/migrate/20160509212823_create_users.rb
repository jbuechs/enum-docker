class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :gender

      t.timestamps null: false
    end
  end
end
