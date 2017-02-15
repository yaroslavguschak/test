class CreateWorkers < ActiveRecord::Migration[5.0]
  def change
    create_table :workers do |t|
      t.string :worker_name
      t.text :responsibility
      t.references :department, foreign_key: true

      t.timestamps
    end
  end
end
