class CreateEwcJobDev484f172c279d01e292b11d06b94ad12772058b31s < ActiveRecord::Migration
  def change
    create_table :ewc_job_dev484f172c279d01e292b11d06b94ad12772058b31s do |t|
      t.text :url
      t.string :tag
      t.text :content
      t.integer :wordcount

      t.timestamps null: false
    end
  end
end
