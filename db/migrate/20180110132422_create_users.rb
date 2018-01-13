class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email, index: true
      t.string :mobile, index: true
      t.string :password_digest

      t.string :name
      t.text :bio
      t.integer :gender
      t.integer :age
      t.string :avatar
      t.integer :target_volumn_number

      t.timestamps
    end
  end
end
