class CreateEwcJobDev31252fd29100ac5f42b875eb004c44c620d0301cs < ActiveRecord::Migration
  def change
    create_table :ewc_job_dev31252fd29100ac5f42b875eb004c44c620d0301cs do |t|
      t.text :url
      t.string :tag
      t.text :content
      t.integer :wordcount

      t.timestamps null: false
    end
  end
end
