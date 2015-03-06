class CreateConventions < ActiveRecord::Migration
  def change
    create_table :conventions do |t|
      t.string :name
      t.text :description
      t.string :initDate
      t.string :endDate
      t.string :place

      t.timestamps
    end
  end
end
