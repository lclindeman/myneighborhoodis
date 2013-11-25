class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.integer :neighborhood_id

      t.timestamps
    end
  end
end
