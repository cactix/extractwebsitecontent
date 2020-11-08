class CreateEwcJobDev5b1d6dc017e823108cf73adebe3f519e20021340s < ActiveRecord::Migration
  def change
    create_table :ewc_job_dev5b1d6dc017e823108cf73adebe3f519e20021340s do |t|
      t.text :url
      t.string :tag
      t.text :content
      t.integer :wordcount

      t.timestamps null: false
    end
  end
end
