class CreateEwcJobDevafb8a88e311f9498cf7b89c4b54db8280e1f9955s < ActiveRecord::Migration
  def change
    create_table :ewc_job_devafb8a88e311f9498cf7b89c4b54db8280e1f9955s do |t|
      t.text :url
      t.string :tag
      t.text :content
      t.integer :wordcount

      t.timestamps null: false
    end
  end
end
