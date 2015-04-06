class CreateCollegesStudents < ActiveRecord::Migration
  def change
    create_table :colleges_students do |t|
        t.integer :student_id
        t.integer :college_id
        
        t.timestamps null: false
    end
  end
end
