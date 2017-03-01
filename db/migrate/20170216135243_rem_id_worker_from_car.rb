class RemIdWorkerFromCar < ActiveRecord::Migration[5.0]
  def change
    remove_column :cars, :worker_id, :integer
  end
end
