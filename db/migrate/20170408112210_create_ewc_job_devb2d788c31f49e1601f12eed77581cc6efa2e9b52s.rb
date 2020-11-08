class CreateEwcJobDevb2d788c31f49e1601f12eed77581cc6efa2e9b52s < ActiveRecord::Migration
  def change
    create_table :ewc_job_devb2d788c31f49e1601f12eed77581cc6efa2e9b52s do |t|
      t.text :url
      t.string :tag
      t.text :content
      t.integer :wordcount

      t.timestamps null: false
    end
  end
end
