class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :Name
      t.decimal :Age
      t.date :DOB
      t.decimal :Score
      t.string :School
      t.string :Level
      t.string :Sex

      t.timestamps null: false
    end
    

end
