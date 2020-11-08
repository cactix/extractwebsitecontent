class CreateEwcJobDev708e9b376da845a1476ae14889f7e79d3d656a1cs < ActiveRecord::Migration
  def change
    create_table :ewc_job_dev708e9b376da845a1476ae14889f7e79d3d656a1cs do |t|
      t.text :url
      t.string :tag
      t.text :content
      t.integer :wordcount

      t.timestamps null: false
    end
  end
end
