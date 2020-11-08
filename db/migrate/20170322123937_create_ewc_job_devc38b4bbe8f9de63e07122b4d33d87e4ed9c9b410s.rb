class CreateEwcJobDevc38b4bbe8f9de63e07122b4d33d87e4ed9c9b410s < ActiveRecord::Migration
  def change
    create_table :ewc_job_devc38b4bbe8f9de63e07122b4d33d87e4ed9c9b410s do |t|
      t.text :url
      t.string :tag
      t.text :content
      t.integer :wordcount

      t.timestamps null: false
    end
  end
end
