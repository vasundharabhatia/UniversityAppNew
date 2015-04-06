class CreateColleges < ActiveRecord::Migration
  def change
    create_table :colleges do |t|
      t.string :Name
      t.string :Country
      t.decimal :SATMinScore
      t.decimal :SATMaxScore
      t.decimal :TuitionFees

      t.timestamps null: false
    end
    

  end
end
