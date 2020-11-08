class CreateEwcJobDev28aa8abe701c26ceebabb53f68aadcf1e0e8ca4ds < ActiveRecord::Migration
  def change
    create_table :ewc_job_dev28aa8abe701c26ceebabb53f68aadcf1e0e8ca4ds do |t|
      t.text :url
      t.string :tag
      t.text :content
      t.integer :wordcount

      t.timestamps null: false
    end
  end
end
