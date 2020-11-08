class CreateEwcJobDev08a792dc40c68126b100f35c9ea81fc80a477fbbs < ActiveRecord::Migration
  def change
    create_table :ewc_job_dev08a792dc40c68126b100f35c9ea81fc80a477fbbs do |t|
      t.text :url
      t.string :tag
      t.text :content
      t.integer :wordcount

      t.timestamps null: false
    end
  end
end
