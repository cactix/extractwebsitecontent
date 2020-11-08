class CreateEwcJobDev38b6d27b9c7411e5a264c8e4f5b9d6966dc656cfs < ActiveRecord::Migration
  def change
    create_table :ewc_job_dev38b6d27b9c7411e5a264c8e4f5b9d6966dc656cfs do |t|
      t.text :url
      t.string :tag
      t.text :content
      t.integer :wordcount

      t.timestamps null: false
    end
  end
end
