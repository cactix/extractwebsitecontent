class CreateEwcJobDev4a4ebbf31d6a54aea312295bc1f265cb8c1401f9s < ActiveRecord::Migration
  def change
    create_table :ewc_job_dev4a4ebbf31d6a54aea312295bc1f265cb8c1401f9s do |t|
      t.text :url
      t.string :tag
      t.text :content
      t.integer :wordcount

      t.timestamps null: false
    end
  end
end
