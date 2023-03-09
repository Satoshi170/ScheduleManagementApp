class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.date :startdate
      t.date :enddate
      t.boolean :allday
      t.text :content

      t.timestamps
    end
  end
end
