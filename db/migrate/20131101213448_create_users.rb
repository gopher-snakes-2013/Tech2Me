class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
    t.string :email
    t.string :password
    end
  end

  def down
    drop_table :users
  end
end
