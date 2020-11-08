class CreateEwcJobDeve06e3567cc751d965cd221bee9cd943abb0bc851s < ActiveRecord::Migration
  def change
    create_table :ewc_job_deve06e3567cc751d965cd221bee9cd943abb0bc851s do |t|
      t.text :url
      t.string :tag
      t.text :content
      t.integer :wordcount

      t.timestamps null: false
    end
  end
end
