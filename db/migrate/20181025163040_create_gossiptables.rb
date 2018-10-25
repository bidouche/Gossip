class CreateGossiptables < ActiveRecord::Migration[5.2]
  def change
    create_table :gossiptables do |t|
      t.string :title
      t.string :content
      t.string :date
      t.belongs_to :user
      t.belongs_to :tag
      t.timestamps
    end
  end
end
