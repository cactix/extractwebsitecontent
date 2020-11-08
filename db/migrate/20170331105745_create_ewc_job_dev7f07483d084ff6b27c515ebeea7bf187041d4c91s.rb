class CreateEwcJobDev7f07483d084ff6b27c515ebeea7bf187041d4c91s < ActiveRecord::Migration
  def change
    create_table :ewc_job_dev7f07483d084ff6b27c515ebeea7bf187041d4c91s do |t|
      t.text :url
      t.string :tag
      t.text :content
      t.integer :wordcount

      t.timestamps null: false
    end
  end
end
