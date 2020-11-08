class CreateEwcJobDev2abb245923a424eafe24262aa1cd1f8eed5ba504s < ActiveRecord::Migration
  def change
    create_table :ewc_job_dev2abb245923a424eafe24262aa1cd1f8eed5ba504s do |t|
      t.text :url
      t.string :tag
      t.text :content
      t.integer :wordcount

      t.timestamps null: false
    end
  end
end
