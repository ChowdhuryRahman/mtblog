class CreateSignups < ActiveRecord::Migration
  def change
    create_table :signups do |t|
      t.string :FisrtName
      t.string :LastName
      t.string :Email

      t.timestamps
    end
  end
end
