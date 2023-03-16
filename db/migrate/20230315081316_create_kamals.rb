class CreateKamals < ActiveRecord::Migration[7.0]
  def change
    create_table :kamals do |t|
      t.string :index

      t.timestamps
    end
  end
end
