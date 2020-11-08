class CreateEwcJobDevb4e131670a970c281e7740526950c0285e9d9fdfs < ActiveRecord::Migration
  def change
    create_table :ewc_job_devb4e131670a970c281e7740526950c0285e9d9fdfs do |t|
      t.text :url
      t.string :tag
      t.text :content
      t.integer :wordcount

      t.timestamps null: false
    end
  end
end
