class AddPeriodToRankings < ActiveRecord::Migration[5.0]
  def change
    add_column :rankings, :started_at, :datetime
    add_column :rankings, :ended_at, :datetime
  end
end
