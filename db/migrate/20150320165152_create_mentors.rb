class CreateMentors < ActiveRecord::Migration
  def change
    create_table :mentors do |t|
      t.string :Name
      t.decimal :Age
      t.date :DOB
      t.string :Sex
      t.text :Bio

      t.timestamps null: false
    end
  end
end
