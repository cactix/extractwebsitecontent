class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :AutoNumber
      t.text :IP_address
      t.text :url
      t.string :option_selected
      t.string :email
      t.datetime :time_elapsed
      t.string :job_status
      
      t.timestamps null: false
    end
  end
end
