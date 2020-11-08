class CreateEwcJobDev2f662efdac09b511edb73f3f6946aed63f737d76s < ActiveRecord::Migration
  def change
    create_table :ewc_job_dev2f662efdac09b511edb73f3f6946aed63f737d76s do |t|
      t.text :url
      t.string :tag
      t.text :content
      t.integer :wordcount

      t.timestamps null: false
    end
  end
end
