class CreateLockAttempts < ActiveRecord::Migration[6.1]
  def change
    create_table :lock_attempts do |t|
      t.boolean :attempted
      t.text :errors

      t.timestamps
    end
  end
end
