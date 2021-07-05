class CreateTeamUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :team_users do |t|
      t.integer :user
      t.integer :team

      t.timestamps
    end
  end
end
