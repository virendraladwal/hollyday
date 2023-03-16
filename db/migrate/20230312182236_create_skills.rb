class CreateSkills < ActiveRecord::Migration[7.0]
  def change
    create_table :skills do |t|
      t.string :subject
      t.integer :presente

      t.timestamps
    end
  end
end
