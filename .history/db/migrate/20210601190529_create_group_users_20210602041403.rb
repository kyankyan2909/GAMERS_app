class CreateGroupUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :group_users do |t|
      t.referenses :user
      t.referenses :group
      
      t.timestamps
    end
  end
end
