class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, unique: true, presence: true, length: { in: 4..20 }
      t.string :email, unique: true, presence: true, length: { in: 4..20 }
      t.string :password_digest, presence: true

      t.timestamps null: false
    end
  end
end
