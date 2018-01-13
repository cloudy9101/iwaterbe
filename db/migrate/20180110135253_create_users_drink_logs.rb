class CreateUsersDrinkLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :users_drink_logs do |t|
      t.integer :user_id
      t.date :date
      t.datetime :time
      t.integer :volume

      t.timestamps
    end

    add_index :users_drink_logs, [:user_id, :date]
  end
end
