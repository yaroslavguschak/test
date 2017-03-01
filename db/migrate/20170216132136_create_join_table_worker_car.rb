class CreateJoinTableWorkerCar < ActiveRecord::Migration[5.0]
  def change
    create_join_table :workers, :cars, table_name: :booking do |t|
      # t.index [:worker_id, :car_id]
      # t.index [:car_id, :worker_id]
    end
  end
end
