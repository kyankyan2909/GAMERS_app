class AddTeamImageToTeams < ActiveRecord::Migration[6.0]
  def change
    add_column :teams, :team_image, :string
  end
end
