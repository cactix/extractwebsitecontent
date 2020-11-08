class CreateEwcJobDev3034ec78f196f537ff313e7da2c8807a55267bb4s < ActiveRecord::Migration
  def change
    create_table :ewc_job_dev3034ec78f196f537ff313e7da2c8807a55267bb4s do |t|
      t.text :url
      t.string :tag
      t.text :content
      t.integer :wordcount

      t.timestamps null: false
    end
  end
end
