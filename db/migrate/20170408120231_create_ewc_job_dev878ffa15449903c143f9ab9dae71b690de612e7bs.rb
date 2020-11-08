class CreateEwcJobDev878ffa15449903c143f9ab9dae71b690de612e7bs < ActiveRecord::Migration
  def change
    create_table :ewc_job_dev878ffa15449903c143f9ab9dae71b690de612e7bs do |t|
      t.text :url
      t.string :tag
      t.text :content
      t.integer :wordcount

      t.timestamps null: false
    end
  end
end
