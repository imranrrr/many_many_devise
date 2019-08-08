class Authorhistory < ActiveRecord::Migration[5.2]
  def change
    create_table :accouts do |f|
      f.belongs_to :book, index: true
      f.belongs_to :author, index: true
      f.timestamps
    end
  end
end
