class CreateEwcJobDevf0f708c1a9714cac5008005b86e6e30a7ff624f6s < ActiveRecord::Migration
  def change
    create_table :ewc_job_devf0f708c1a9714cac5008005b86e6e30a7ff624f6s do |t|
      t.text :url
      t.string :tag
      t.text :content
      t.integer :wordcount

      t.timestamps null: false
    end
  end
end
