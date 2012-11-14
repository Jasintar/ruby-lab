class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.string :prefix
      t.string :title
      t.text :body
      t.text :input
      t.text :output

      t.timestamps
    end
  end
end
