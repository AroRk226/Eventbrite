class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :encrypted_password
      t.text :description
      t.string :first_name, null: false, default: ""
      t.string :last_name, null: false, default: ""

      t.timestamps
    end
  end
end
