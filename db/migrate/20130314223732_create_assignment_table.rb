class CreateAssignmentTable < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :name
      t.integer :size
      t.timestamps
    end
  end
end
