class CreateEwcJobDev6676af747694cbe50670b00c6dc17ae72c14d098s < ActiveRecord::Migration
  def change
    create_table :ewc_job_dev6676af747694cbe50670b00c6dc17ae72c14d098s do |t|
      t.text :url
      t.string :tag
      t.text :content
      t.integer :wordcount

      t.timestamps null: false
    end
  end
end
