class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.references :employer, index: true, foreign_key: true
      t.integer :wage

      t.timestamps null: false
    end
  end
end
