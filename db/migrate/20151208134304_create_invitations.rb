class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.string :email,   null: false
      t.string :token,   null: false

      t.timestamps null: false
    end
  end
end
