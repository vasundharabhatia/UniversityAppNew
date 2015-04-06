class CreateCollegeStudents < ActiveRecord::Migration
  def change
    create_table :college_students do |t|
        t.integer :student_id
        t.integer :college_id
        
        t.timestamps null: false
    end
    end
end
