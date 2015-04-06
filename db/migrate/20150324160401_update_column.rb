class UpdateColumn < ActiveRecord::Migration
  def change
  	change_table :colleges do |c|
      c.change :TuitionFees, :string
    end
  end
end
