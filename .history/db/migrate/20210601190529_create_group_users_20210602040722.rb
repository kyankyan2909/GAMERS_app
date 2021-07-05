class CreateGroupUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :group_users do |t|
      t.referenses :user, index: true, foreign_key: true
      t.referenses :group
      
      t.timestamps
    end
  end
end
