class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.string :model
      t.string :plate
      t.references :worker, foreign_key: true

      t.timestamps
    end
  end
end
