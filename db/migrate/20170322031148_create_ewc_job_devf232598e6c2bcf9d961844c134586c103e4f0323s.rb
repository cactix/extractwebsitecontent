class CreateEwcJobDevf232598e6c2bcf9d961844c134586c103e4f0323s < ActiveRecord::Migration
  def change
    create_table :ewc_job_devf232598e6c2bcf9d961844c134586c103e4f0323s do |t|
      t.text :url
      t.string :tag
      t.text :content
      t.integer :wordcount

      t.timestamps null: false
    end
  end
end
