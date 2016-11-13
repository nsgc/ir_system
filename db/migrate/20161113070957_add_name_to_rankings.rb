class AddNameToRankings < ActiveRecord::Migration[5.0]
  def change
    add_column :rankings, :name, :string
  end
end
