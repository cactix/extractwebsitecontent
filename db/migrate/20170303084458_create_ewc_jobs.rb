class CreateEwcJobs < ActiveRecord::Migration
  def change
    create_table :ewc_jobs do |t|
      t.text :url
      t.string :tag
      t.text :content
      t.integer :wordcount

      t.timestamps null: false
    end
  end
end
