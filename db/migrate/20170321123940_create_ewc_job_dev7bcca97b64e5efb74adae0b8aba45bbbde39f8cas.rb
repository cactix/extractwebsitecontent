class CreateEwcJobDev7bcca97b64e5efb74adae0b8aba45bbbde39f8cas < ActiveRecord::Migration
  def change
    create_table :ewc_job_dev7bcca97b64e5efb74adae0b8aba45bbbde39f8cas do |t|
      t.text :url
      t.string :tag
      t.text :content
      t.integer :wordcount

      t.timestamps null: false
    end
  end
end
