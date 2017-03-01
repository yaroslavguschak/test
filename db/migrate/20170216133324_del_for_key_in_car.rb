class DelForKeyInCar < ActiveRecord::Migration[5.0]
  def change
    #remove_column :cars, :worker_id, :integer
    remove_index  :cars, name: 'index_cars_on_worker_id'
  end
end
