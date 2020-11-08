class CreateEwcJobDev3e1cf3ad4ac4d3091fbdeeb945d7b19732b8dc14s < ActiveRecord::Migration
  def change
    create_table :ewc_job_dev3e1cf3ad4ac4d3091fbdeeb945d7b19732b8dc14s do |t|
      t.text :url
      t.string :tag
      t.text :content
      t.integer :wordcount

      t.timestamps null: false
    end
  end
end
