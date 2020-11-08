class ChangeDataTypeForFieldname < ActiveRecord::Migration
  def self.up
    change_table :ewc_contents do |t|
      t.change :content, :text
    end
  end
  def self.down
    change_table :ewc_contents do |t|
      t.change :conte, :text
    end
  end
end
