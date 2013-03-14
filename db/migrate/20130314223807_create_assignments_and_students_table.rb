class CreateAssignmentsAndStudentsTable < ActiveRecord::Migration
  def change
    create_table :assignments_students, :id => false do |t|
      t.integer :assignment_id
      t.integer :student_id
    end
  end
end
