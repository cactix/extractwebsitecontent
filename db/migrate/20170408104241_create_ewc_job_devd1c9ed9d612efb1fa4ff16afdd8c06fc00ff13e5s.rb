class CreateEwcJobDevd1c9ed9d612efb1fa4ff16afdd8c06fc00ff13e5s < ActiveRecord::Migration
  def change
    create_table :ewc_job_devd1c9ed9d612efb1fa4ff16afdd8c06fc00ff13e5s do |t|
      t.text :url
      t.string :tag
      t.text :content
      t.integer :wordcount

      t.timestamps null: false
    end
  end
end
