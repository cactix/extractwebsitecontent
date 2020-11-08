class CreateEwcJobDev507ccf1d683cee3ba79bbc61648f431badea4635s < ActiveRecord::Migration
  def change
    create_table :ewc_job_dev507ccf1d683cee3ba79bbc61648f431badea4635s do |t|
      t.text :url
      t.string :tag
      t.text :content
      t.integer :wordcount

      t.timestamps null: false
    end
  end
end
