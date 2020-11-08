class CreateEwcJobDev7d41e3a531b6613e764e16dd68d588b2b2b75469s < ActiveRecord::Migration
  def change
    create_table :ewc_job_dev7d41e3a531b6613e764e16dd68d588b2b2b75469s do |t|
      t.text :url
      t.string :tag
      t.text :content
      t.integer :wordcount

      t.timestamps null: false
    end
  end
end
