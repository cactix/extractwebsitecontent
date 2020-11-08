class CreateEwcJobDev1a532553c8771a765adaeead52ffd5e07541b9a4s < ActiveRecord::Migration
  def change
    create_table :ewc_job_dev1a532553c8771a765adaeead52ffd5e07541b9a4s do |t|
      t.text :url
      t.string :tag
      t.text :content
      t.integer :wordcount

      t.timestamps null: false
    end
  end
end
