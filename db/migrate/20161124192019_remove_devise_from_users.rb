class RemoveDeviseFromUsers < ActiveRecord::Migration[5.0]
  change_table :users do |t|
    t.remove :sign_in_count, :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip, :last_sign_in_ip
    t.string :email
  end
end
