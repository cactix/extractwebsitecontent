class CreateEwcJobDev247317edd2fbed736ea0c9d3ea37d66a738ad34as < ActiveRecord::Migration
  def change
    create_table :ewc_job_dev247317edd2fbed736ea0c9d3ea37d66a738ad34as do |t|
      t.text :url
      t.string :tag
      t.text :content
      t.integer :wordcount

      t.timestamps null: false
    end
  end
end
