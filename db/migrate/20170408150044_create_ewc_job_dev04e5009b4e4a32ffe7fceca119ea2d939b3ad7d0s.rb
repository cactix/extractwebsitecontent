class CreateEwcJobDev04e5009b4e4a32ffe7fceca119ea2d939b3ad7d0s < ActiveRecord::Migration
  def change
    create_table :ewc_job_dev04e5009b4e4a32ffe7fceca119ea2d939b3ad7d0s do |t|
      t.text :url
      t.string :tag
      t.text :content
      t.integer :wordcount

      t.timestamps null: false
    end
  end
end
