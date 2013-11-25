class CreateDescriptors < ActiveRecord::Migration
  def change
    create_table :descriptors do |t|
      t.integer :submission_id
      t.string :adjective

      t.timestamps
    end
  end
end
