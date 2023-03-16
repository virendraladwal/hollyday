class CreateTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :teams do |t|
      t.string :title
      t.string :subtitle
      t.text :body

      t.timestamps
    end
  end
end
