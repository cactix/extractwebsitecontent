class CreateEwcContents < ActiveRecord::Migration
  def change
    create_table :ewc_contents do |t|
      t.text :content

      t.timestamps null: false
    end
  end
end
