class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.string :logo
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
