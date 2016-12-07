class AddDeviseToUsers < ActiveRecord::Migration[5.0]
  change_table :users do |t|
    t.remove :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at
  end
end
