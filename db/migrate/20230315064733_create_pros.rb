class CreatePros < ActiveRecord::Migration[7.0]
  def change
    create_table :pros do |t|
      t.string :name

      t.timestamps
    end
  end
end
